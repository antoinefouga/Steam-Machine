const AbstractRepository = require("./AbstractRepository");

class UserRepository extends AbstractRepository {
  constructor() {
    super({ table: "user" });
  }

  async readAll() {
    const [rows] = await this.database.query(`select * from ${this.table}`);

    return rows;
  }

  async read(id) {
    const [rows] = await this.database.query(
      `select * from ${this.table} where id = ?`,
      [id]
    );
    return rows[0];
  }

  async create(user) {
    const [rows] = await this.database.query(
      `insert into ${this.table} (email, password, firstname, lastname, adresss, creat_at) values(?, ?, ?, ?, ?, NOW())`,
      [user.email, user.password, user.firstname, user.lastname, user.adresss]
    );
    return rows;
  }
}

module.exports = UserRepository;
