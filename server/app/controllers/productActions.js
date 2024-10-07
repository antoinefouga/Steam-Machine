const tables = require("../../database/tables");

const read = async (req, res, next) => {
  try {
    const product = await tables.products.read(req.params.id);

    if (product === null) {
      res.sendStatus(404);
    } else {
      res.json(product);
    }
  } catch (err) {
    next(err);
  }
};
module.exports = { read };
