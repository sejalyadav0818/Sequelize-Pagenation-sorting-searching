'use strict';

const { faker } = require("@faker-js/faker");
const user = [...Array(80)].map((use) => ({
  firstName: faker.name.firstName(),
  lastName: faker.name.firstName(),
  email: faker.internet.email(),
  createdAt: new Date(),
  updatedAt: new Date()

}));
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    return queryInterface.bulkInsert('Users', user, {});
  },

  async down (queryInterface, Sequelize) {
    return queryInterface.bulkDelete('Users',null,{});
  }
};
