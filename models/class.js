"use strict";
const { 
  Model 
} = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Class extends Model {
    static associate({ Student }) {

       this.hasMany(Student, { foreignKey: "userId", as: "Students" });
    }
  }
  Class.init(
    {
      id: {
        type : DataTypes.INTEGER,
        primaryKey: true
      },
      userId: DataTypes.INTEGER,
      email: DataTypes.STRING,
      content: DataTypes.STRING,
    },
    {
      sequelize,
      tableName: "Classes",
      modelName: "Class",
    }
  );
  return Class;
};
