const express = require('express');
const app = express();

const port = 3000

// simple route
app.get("/", (req, res) => {
  res.send({ message: "Hello World!" });
});

// set port, listen for requests
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});