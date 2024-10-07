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

const browse = async (req, res, next) => {
  try {
    const products = await tables.products.readAll();
    res.json(products);
  } catch (err) {
    next(err);
  }
};

const add = async (req, res, next) => {
  const product = req.body;

  try {
    const affectedRows = await tables.products.create(product);
    res.status(201).json({ affectedRows });
  } catch (err) {
    next(err);
  }
};

const edit = async (req, res, next) => {
  const product = { ...req.body, id: req.body.id };

  try {
    const result = await tables.products.update(product);
    res.sendStatus(204).json(result);
  } catch (err) {
    next(err);
  }
};

module.exports = { read, browse, add, edit };
