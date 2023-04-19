"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Student extends Model {
    static associate({Class}) {
       this.belongsTo(Class, { foreignKey: "userId", as: "Classes" });
     
    }
  }
  Student.init(
    {
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
      },
      firstName: DataTypes.STRING,
      lastName: DataTypes.STRING,
      email: DataTypes.STRING,
    },
    {
      sequelize,
      tableName: "Students",
      modelName: "Student",
    }
  );
  return Student;
};
 