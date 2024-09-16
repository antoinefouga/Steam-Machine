const express = require("express");

const router = express.Router();

/* ************************************************************************* */
// Import And Use Routers Here
/* ************************************************************************* */

const itemsRouter = require("./items/router");
const userActions = require("../../controllers/userActions");

router.use("/items", itemsRouter);

router.get("/users", userActions.browse);
router.get("/users/:id", userActions.read);
router.post("/users/sign", userActions.add);

/* ************************************************************************* */

module.exports = router;
