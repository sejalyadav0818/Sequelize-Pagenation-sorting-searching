const express = require("express");
const { Sequelize, Student, Classe } = require("./models");
const body = require("body-parser");
const student = require("./models/student");
const app = express();
app.use(body.urlencoded({ extended: false }));
app.use(body.json());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
const PORT = 4000;

app.get("/", (req, res) => {
  console.log("get api call");
});

//insert data
app.post("/users", async (req, res) => {
  const { firstName, lastName, email } = req.body;
  try {
    const user = await Student.create({ firstName, lastName, email });
    return res.json(user);
  } catch (err) {
    return res.status(500).json(err);
  }
});


// Get users
app.get("/users", async(req,res) =>{
    try{
        const users = await Student.findAll({ include: "Classes" });
        return res.json(users);
    }catch(err){
        console.log(err);
        return res.status(500).json({err: "An error occured"});
    }
});

app.listen(PORT, function (err) {
  if (err) console.log(err);
  console.log("Server listening on PORT", PORT);
});
