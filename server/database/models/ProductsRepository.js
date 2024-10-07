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
}

module.exports = ProductsRepository;
