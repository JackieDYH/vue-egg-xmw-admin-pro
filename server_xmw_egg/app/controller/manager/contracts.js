/*
 * @Author: Jackie
 * @Date: 2022-03-02 14:55:29
 * @LastEditTime: 2022-03-02 14:57:02
 * @LastEditors: Jackie
 * @Description: 方法案例
 * @FilePath: /Xmw_server/app/controller/manager/contracts.js
 * @version: 
 */
const Controller = require('../../core/base_controller');
class ContractsController extends Controller {
    async getContractList() {
        const result = await this.ctx.service.contracts.getContractList();
        this.outputService(result);
    }
}
module.exports = ContractsController;