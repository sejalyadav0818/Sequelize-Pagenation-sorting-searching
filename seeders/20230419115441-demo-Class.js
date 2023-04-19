"use strict";
const { faker } = require("@faker-js/faker");
const todos1 = [...Array(100)].map((todo1) => ({

  email: faker.lorem.words(),
  content: faker.lorem.words(),
  createdAt: new Date(),
  updatedAt: new Date(),
}));

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.bulkInsert("Classes", todos1, {});
  },

  async down(queryInterface, Sequelize) {
    await queryInterface.bulkDelete("Classes", null, {});
  },
};
