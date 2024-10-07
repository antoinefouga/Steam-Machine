const AbstractRepository = require("./AbstractRepository");

class ProductsRepository extends AbstractRepository {
  constructor() {
    super({ table: "products" });
  }

  async read(id) {
    const [rows] = await this.database.query(
      `select * from ${this.table} where id = ?`,
      [id]
    );
    return rows[0];
  }

  async readAll() {
    const [rows] = await this.database.query(`select * from ${this.table}`);
    return rows;
  }

  async create(product) {
    const [result] = await this.database.query(
      `insert into ${this.table} (name, description, price, stock, image, creat_at) values (?, ?, ?, ?, ?, NOW())`,
      [
        product.name,
        product.description,
        product.price,
        product.stock,
        product.image,
      ]
    );
    return result.insertId;
  }

  async update(product) {
    const [result] = await this.database.query(
      `update ${this.table} set name = ?, description = ?, price = ?, stock = ?, image = ? where id = ?`,
      [
        product.name,
        product.description,
        product.price,
        product.stock,
        product.image,
        product.id,
      ]
    );
    return result.affectedRows;
  }
}

module.exports = ProductsRepository;
