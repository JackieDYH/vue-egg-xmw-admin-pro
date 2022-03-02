/*
 * @Author: Jackie
 * @Date: 2022-03-01 18:00:31
 * @LastEditTime: 2022-03-02 14:46:00
 * @LastEditors: Jackie
 * @Description: file content
 * @FilePath: /Xmw_server/app.js
 * @version: 
 */
//const Sequelize = require('sequelize');
const sqlStart = require('./lib/sqlStart')
module.exports = app => {
  // 开始前执行

  app.beforeStart(async () => {
    await sqlStart(app);
    // await app.model.sync({ alter: true });
    // 根据model结构生成数据库表结构
    // app.model.Contracts.sync({ alter: true });
  });

  app.ready(async () => {
    const loadUnits = app.loader.getLoadUnits();
    // const db = {}; 
    // const databases = Object.keys(app.config.Dbs); 
    // for(let i = 0; i < databases.length; ++i) { 
    //     let database = databases[i]; 
    //     const sequelize=new Sequelize(app.config.Dbs[database].database, app.config.Dbs[database].username, app.config.Dbs[database].password, {
    //       host: app.config.Dbs[database].host,
    //       dialect: app.config.Dbs[database].dialect,
    //       pool: {
    //           max: 5,
    //           min: 0,
    //           idle: 30000
    //       }
    //    });
    //    db[database] = {
    //      Raw:sequelize,
    //      transaction:sequelize.transaction
    //    }
    //   if(!app["Dbs"]) app["Dbs"]={};
    //   app["Dbs"][database]=db[database];
    // } 
  });

  // 关闭前执行
  app.beforeClose(async () => {

  });
}