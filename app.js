const express = require("express");
const { sequelize, User } = require("./models"); // import models
const bodyParser = require("body-parser");
const { Sequelize } = require("sequelize");
const { Op } = require("sequelize");
const app = express();
app.use(bodyParser.json());

// Get all users
app.get("/Student", async (req, res) => {
  try {
    const users = await User.findAll();
    res.json({
      data: {
        users: users,
      },
      error: null,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      data: null,
      error: {
        success: false,
        message: "Unable to retrieve Student",
        errorMessage: error.message,
      },
    });
  }
});

//Searhing
// Get all users with optional search by name
app.get("/users/search", async (req, res) => {
  const { fname, lname, emaill } = req.query;
  // console.log(searchf, searchl, searche);
  const queryOptions = await User.findAll({
    where: {
      [Op.or]: [
        {
          firstName: { [Op.like]: `%${fname}%` },
        },
        {
          lastName: { [Op.like]: `%${lname}%` },
        },
        {
          email: { [Op.like]: `%${emaill}%` },
        },
      ],
    },
  
  });
  console.log(queryOptions);
  res.json({
    data: {
      users: queryOptions,
    },
    error: null,
  });
});

//sorting Remaining
// app.get("/users/sort", async (req, res) => {
//   //const { fname, lname, emaill } = req.query;
//   // console.log(searchf, searchl, searche);
//   const queryOptions = await User.findAll({
//     where: {
//     order :[firstName, "ASC"],

//       [Op.order]: [lastName, "ASC"],

//       [Op.order]: [email, "ASC"],
//     },
//   });

//   console.log(queryOptions);
//   res.json({
//     data: {
//       users: queryOptions,
//     },
//     error: null,
//   });
// });

//pagenation
app.get("/users/search", async (req, res) => {
  const {
    fname,
    lname,
    emaill,
    orderfname,
    orderlname,
    orderemail,
    page,
    size,
  } = req.query;
  const PageAsNumber = Number.parseInt(page);
  const PageAsSize = Number.parseInt(size);
  let pages = 1;
  if (!Number.isNaN(PageAsNumber) && PageAsNumber > 0) {
    pages = PageAsNumber;
  }
  let sizes = 1;
  if (!Number.isNaN(PageAsSize) && PageAsSize > 0 && PageAsSize < 10) {
    sizes = PageAsSize;
  }

  // console.log(searchf, searchl, searche);
  const queryOptions = await User.findAll({
    where: {
      [Op.or]: [
        {
          firstName: { [Op.like]: `%${fname}%` },
        },
        {
          lastName: { [Op.like]: `%${lname}%` },
        },
        {
          email: { [Op.like]: `%${emaill}%` },
        },
      ],
    },
    order: [
      ["firstName", `${orderfname}`],
      ["lastName", `${orderlname}`],
      ["email", `${orderemail}`],
    ],
    limit: sizes,
    offset: pages * sizes,
  });
  console.log(queryOptions);
  res.json({
    data: {
      users: queryOptions,
    },
    error: null,
  });
});


app.get("/users/paget", async (req, res) => {
  const PageAsNumber = Number.parseInt(req.body.page);
  const PageAsSize = Number.parseInt(req.body.size);
  let page = 0;
  if (!Number.isNaN(PageAsNumber) && PageAsNumber > 0) {
    page = PageAsNumber;
  }
  let size = 10;
  if (!Number.isNaN(PageAsSize) && PageAsSize > 0 && PageAsSize < 10) {
    size = PageAsSize;
  }
  // console.log(searchf, searchl, searche);
  const queryOptionss = await User.findAndCountAll({
    limit: size,
    offset: page * size,
    // conditions
  });
  console.log(queryOptionss);
  res.json({
    data: {
      users: queryOptionss,
    },
    error: null,
  });
});

//soft delete https://www.topcoder.com/thrive/articles/paranoid-tables-in-sequelize-orm-implementing-soft-delete
app.listen(3000, () => console.log("server is listen on port 3000"));
