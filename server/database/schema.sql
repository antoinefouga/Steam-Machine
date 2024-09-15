create table user (
  id int unsigned primary key auto_increment not null,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  adresss TEXT NOT NULL,
  creat_at TIMESTAMP not null
);

create table products (
  id int unsigned primary key auto_increment not null,
  name varchar(255) not null,
  description TEXT NOT NULL,
  price INT NOT NULL,
  stock INT NOT NULL,
  image VARCHAR(255) NOT NULL,
  creat_at TIMESTAMP not null
);

INSERT INTO user (email, password, firstname, lastname, adresss, creat_at) VALUES
('alice.johnson@example.com', 'hashed_password1', 'Alice', 'Johnson', '123 Maple Street, Springfield', NOW()),
('bob.smith@example.com', 'hashed_password2', 'Bob', 'Smith', '456 Oak Avenue, Springfield', NOW()),
('carol.martin@example.com', 'hashed_password3', 'Carol', 'Martin', '789 Pine Road, Springfield', NOW()),
('dave.wilson@example.com', 'hashed_password4', 'Dave', 'Wilson', '101 Birch Lane, Springfield', NOW()),
('eve.davis@example.com', 'hashed_password5', 'Eve', 'Davis', '202 Cedar Blvd, Springfield', NOW());
