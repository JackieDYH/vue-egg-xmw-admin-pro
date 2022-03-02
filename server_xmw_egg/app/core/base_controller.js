/*
 * @Author: mouse
 * @Date: 2020-11-02 13:35:42
 * @LastEditTime: 2022-03-02 14:50:00
 * @LastEditors: Jackie
 * @Description:
 * @FilePath: /Xmw_server/app/core/base_controller.js
 * @project:
 */
"use strict";

const { Controller } = require("egg");
const BaseConst = require("./base_const");
// const jwt = require("jsonwebtoken");
class BaseController extends Controller {
  /**
   * 返回成功结果
   * @param {Object} data
   * @param {String} msg
   */
  success(data = {}, msg = "success") {
    this.ctx.body = {
      status: 1,
      errorCode: BaseConst.RET_CODE_SUCCESS,
      msg,
      data,
    };
  }

  /**
   * 返回失败结果（仅包含失败信息）
   * @param {String} msg
   */
  fail(msg = "failed") {
    this.ctx.body = {
      status: 0,
      errorCode: BaseConst.RET_CODE_FAILED,
      msg: this.ctx.__(msg),
      data: {},
    };
  }

  /**
   * 返回失败结果（包含数据和失败信息）
   * @param {Object} data
   * @param {String} msg
   */
  failData(data = {}, msg = "failed", code) {
    code = code || BaseConst.RET_CODE_FAILED;
    this.ctx.body = {
      status: 0,
      errorCode: code,
      msg: this.ctx.__(msg),
      data,
    };
  }

  /**
   * 将 BaseService 返回的标准结果输出返回
   * @param {Object} result BaseService 返回的标准结果
   * @see ./app/core/base_service.js success() / fail()
   */
  outputService(result) {
    const { success, data, msg, code } = result || {};

    if (success) {
      this.success(data, msg);
    } else {
      this.failData(data, msg, code);
    }
  }

  // getAddress() {
  //   let token;
  //   if (this.ctx.request.method == "GET") {
  //     token = this.ctx.request.query.token;
  //   } else if (this.ctx.request.method == "POST") {
  //     token = this.ctx.request.body.token;
  //   } else {
  //     token = this.ctx.params.token;
  //   }
  //   if (!token) {
  //     token = this.ctx.get("authorization");
  //     if (token) {
  //       const index = token.indexOf("Bearer");
  //       if (index == 0) {
  //         token = token.substring(7);
  //       }
  //     }
  //   }
  //   if (token) {
  //     let res = jwt.verify(token, this.app.config.jwt.secret);
  //     if (res) {
  //       return res.address;
  //     }
  //   }
  // }
}
module.exports = BaseController;
