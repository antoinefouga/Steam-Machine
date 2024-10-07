create table user (
  id int unsigned primary key auto_increment not null,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  firstname VARCHAR(255) NOT NULL,
  lastname VARCHAR(255) NOT NULL,
  adresss TEXT NOT NULL,
  creat_at TIMESTAMP
);

create table products (
  id int unsigned primary key auto_increment not null,
  name varchar(255) not null,
  description TEXT NOT NULL,
  price INT NOT NULL,
  stock INT NOT NULL,
  image VARCHAR(255) NOT NULL,
  creat_at TIMESTAMP
);

INSERT INTO user (email, password, firstname, lastname, adresss, creat_at) VALUES
('alice.johnson@example.com', 'hashed_password1', 'Alice', 'Johnson', '123 Maple Street, Springfield', NOW()),
('bob.smith@example.com', 'hashed_password2', 'Bob', 'Smith', '456 Oak Avenue, Springfield', NOW()),
('carol.martin@example.com', 'hashed_password3', 'Carol', 'Martin', '789 Pine Road, Springfield', NOW()),
('dave.wilson@example.com', 'hashed_password4', 'Dave', 'Wilson', '101 Birch Lane, Springfield', NOW()),
('eve.davis@example.com', 'hashed_password5', 'Eve', 'Davis', '202 Cedar Blvd, Springfield', NOW());


INSERT INTO products (name, description, price, stock, image, creat_at)
VALUES
  ('Vaporesso Luxe X', 'Vaporesso Luxe X est une cigarette electronique compacte avec un design elegant, offrant une vape de haute qualite avec un systeme de pod ultra-performant. Parfaite pour les debutants comme pour les vapoteurs experimentes.', 6000, 50, 'luxe_x.jpg', NOW()),
  ('Voopoo Drag S Pro', 'Avec une batterie de 3000mAh et un chipset intelligent, le Voopoo Drag S Pro offre une puissance allant jusqua 80W. Ideal pour les vapoteurs cherchant une grande autonomie et une forte puissance.', 8000, 40, 'drag_s_pro.jpg', NOW()),
  ('Smok Nord 4', 'Smok Nord 4 est lune des meilleures options pour une vape pratique et polyvalente. Son design ergonomique et sa capacite de 4.5ml en font un incontournable.', 4500, 60, 'smok_nord_4.jpg', NOW()),
  ('Halo Tribeca 10ml', 'Halo Tribeca est un e-liquide au gout classique de tabac doux avec une touche legerement sucree. Cest un favori parmi les amateurs de gout authentique.', 1000, 200, 'halo_tribeca.jpg', NOW()),
  ('Twelve Monkeys Tropika 50ml', 'Twelve Monkeys Tropika offre un melange exotique de fruits tropicaux pour une vape douce et rafraichissante.', 3500, 80, 'tropika.jpg', NOW()),
  ('Nasty Juice Asap Grape 60ml', 'Le Nasty Juice Asap Grape est un melange delicieux de raisin juteux avec une touche dacidite et de fraicheur, parfait pour les amateurs de fruits.', 4000, 100, 'asap_grape.jpg', NOW()),
  ('Resistance Smok RPM 0.4Ω', 'Pack de 5 resistances Smok RPM 0.4Ω, concues pour offrir une production de vapeur optimale avec une restitution des saveurs remarquable.', 2500, 150, 'resistance_rpm.jpg', NOW()),
  ('Etui de protection en silicone', 'Etui en silicone durable pour proteger votre cigarette electronique contre les chocs et les rayures. Compatible avec plusieurs modeles.', 800, 120, 'etui_silicone.jpg', NOW()),
  ('Chargeur USB Voopoo', 'Chargeur rapide USB compatible avec la plupart des modeles Voopoo, pour recharger votre cigarette electronique en toute securite.', 1500, 100, 'chargeur_usb.jpg', NOW());
