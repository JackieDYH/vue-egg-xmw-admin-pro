/*
 * @Author: mouse
 * @Date: 2020-11-02 13:35:42
 * @LastEditTime: 2021-12-29 16:02:49
 * @LastEditors: mouse
 * @Description: 
 * @FilePath: /server/app/core/base_service.js
 * @project: 
 */
"use strict";
const Service = require("egg").Service;

/**
 * Service 基类
 * 包含了标准的返回 Service 逻辑执行成功或失败结果的方法
 *
 * 标准结果对象结构定义：
 * {
 *   success {Boolean} 是否执行成功（业务逻辑层面）
 *   data {Object} 返回结果对象
 *   msg {String} 结果消息字符串
 * }
 */
const constant = require("./base_const");
class BaseService extends Service {
  ///////////////////
  // 业务逻辑标准返回
  //////////////////
  /**
   * Service逻辑执行成功，返回标准成功结果
   * @param {*} data
   * @param {*} msg
   */
  success(data = {}, msg = "success") {
    const success = true;
    return { success, data, msg };
  }

  /**
   * Service逻辑执行失败，返回标准失败结果（不含 data）
   * @param {*} msg
   */
  fail(msg = "failed", code = 1) {
    const success = false;
    const data = {};
    return { success, data, msg, code };
  }

  /**
   * Service逻辑执行失败，返回标准失败结果（含 data）
   * @param {*} data
   * @param {*} msg
   */
  failData(data = {}, msg = "failed") {
    const success = false;
    return { success, data, msg };
  }
  Constant(){
    return constant;
  }
}

module.exports = BaseService;
