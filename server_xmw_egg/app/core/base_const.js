/*
 * @Author: mouse
 * @Date: 2020-11-02 18:49:46
 * @LastEditTime: 2021-12-29 14:21:58
 * @LastEditors: mouse
 * @Description:
 * @FilePath: /server/app/core/base_const.js
 * @project:
 */
"use strict";

/**
 * 基础常量
 */
const BaseConst = {
  /////////////////
  // 请求返回码定义
  /////////////////

  RET_CODE_SUCCESS: 0,
  RET_CODE_FAILED: -1,
  RET_CODE_INVALID_TOKEN: 403,
  RET_CODE_REQUEST_TOO_FREQUENTLY: 3,
  RET_CODE_SYS_ERROR: 500,
  RET_CODE_MAINTAIN: 503,

  CARD_STATE: {
    FREE:0,
    IN_BOOK: 1,
    ON_SALE: 2,
    LOCK: 3,
  },

  DAILY_DATA_TYPE: {
    DRAW_CAED: 1,
    EXCHANGE_COPPER: 2,
  },
};

module.exports = BaseConst;
