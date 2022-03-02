/*
 * @Author: Jackie
 * @Date: 2022-03-02 14:48:02
 * @LastEditTime: 2022-03-02 14:55:00
 * @LastEditors: Jackie
 * @Description: 案例操作数据库
 * @FilePath: /Xmw_server/app/service/contracts.js
 * @version: 
 */
const await = require("await-stream-ready/lib/await");
const Service = require("../core/base_service");
class ContractsService extends Service {
    async getContractList() {
        let res = await this.app.model.Contracts.findAll();
        return this.success(res);
    }
}

module.exports = ContractsService;