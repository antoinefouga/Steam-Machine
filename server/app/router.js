const express = require("express");

const router = express.Router();

/* ************************************************************************* */
// Import And Use Routers Here
/* ************************************************************************* */

const userActions = require("./controllers/userActions");
const authActions = require("./controllers/authActions");
const auth = require("./services/auth");
const middleware = require("./services/middleware");

router.post(
  "/sign",
  middleware.verifyFields,
  auth.hashPassword,
  userActions.add
);
router.post(
  "/login",
  authActions.verifyEmail,
  authActions.verifyPassword,
  auth.createToken,
  authActions.login
);

/* ************************************************************************* */

router.use(auth.verifyToken);

router.get("/checkauth", auth.isConnected);
router.get("/users", userActions.browse);
router.get("/user", userActions.read);
router.put("/user", userActions.edit);
router.delete("/user", userActions.destroy);
router.get("/logout", auth.deleteToken);

module.exports = router;
