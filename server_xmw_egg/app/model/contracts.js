'use strict';

module.exports = (app) => {
  const DataTypes = app.Sequelize.DataTypes;

  const model = app.model.define('contracts', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      primaryKey: true
    },
    contract_name: {
      type: DataTypes.STRING(255),
      allowNull: false,
      comment: "合约名字"
    },
    contract_address: {
      type: DataTypes.STRING(255),
      allowNull: false,
      comment: "合约地址"
    },
    series_id: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      comment: "系列id series_info 表主键"
    },
    contract_type: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      comment: "合约类型 1: nft 合约；2: 盲盒合约"
    },
    push_time: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: true,
      comment: "发布时间"
    },
    resource_url: {
      type:  DataTypes.STRING(255),
      allowNull: true,
      comment: "资源服务地址"
    },
    status: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
      defaultValue: 0,
      comment: "合约发布状态"
    }
  }, {

    tableName: 'contracts',
    timestamps: false,
    indexes: [
      {
        name: "PRIMARY",
        unique: true,
        using: "BTREE",
        fields: [
          { name: "id" },
        ]
      },
      {
        name: "series_id",
        using: "BTREE",
        fields: [
          { name: "series_id" },
        ]
      },
    ]
  });
  return model;
};
