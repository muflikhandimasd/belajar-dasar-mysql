-- ! CREATE TABLE
CREATE TABLE products
(
id VARCHAR(100) NOT NULL,
name VARCHAR(100) NOT NULL,
description TEXT,
price INT UNSIGNED NOT NULL,
quantity INT UNSIGNED NOT NULL DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
PRIMARY KEY(id)
) ENGINE = INNODB;


-- ! MEMASUKKAN DATA
INSERT INTO products(id,name,price,quantity) VALUES('P001', 'Bakso' , 5000, 10);
INSERT INTO products(id,name,description,price,quantity) VALUES('P002', 'Macbook 2021', 'Bisa menggunakan wifi untuk internet' , 25000000, 19);

-- ! MEMASUKKAN DATA LANGSUNG BANYAK
INSERT INTO products(id,name,price,quantity)
VALUES('P003', 'Mie ayam Bakso' , 9000, 100),
      ('P004', 'Mie ayam ceker' , 10000, 50);

-- ! SHOW DATA KOLOM
-- ? Command : SELECT * FROM `nama_table`;
-- ? COMMAND  : SELECT nama_kolom,nama_kolom,nama_kolom FROM `nama_table`;
SELECT * FROM products;
SELECT name FROM products;

-- ! Menambah Primary Key
-- ? Command :  PRIMARY KEY (nama_kolom)
ALTER TABLE products
ADD PRIMARY KEY (id)


-- ! MENCARI DATA
SELECT * FROM products
WHERE id = 'P001';

-- ! TAMBAH KOLOM
ALTER TABLE products
ADD COLUMN category ENUM('Makanan', 'Minuman', 'Lain-lain')
AFTER name;


-- ! Mengupdate Satu Kolom
-- ? Command : 
-- ? UPDATE nama_table
-- ? SET nama_kolom = VALUE
-- ? WHERE nama_kolom = VALUE_KOLOM;
UPDATE products
SET category = 'Makanan'
WHERE id = 'P001';


-- ! Mengupdate Beberapa Kolom
-- ? Command : 
-- ? UPDATE nama_table
-- ? SET nama_kolom = VALUE,
-- ?     nama_kolom = VALUE
-- ? WHERE nama_kolom = VALUE_KOLOM;
UPDATE products
SET category = 'Lain-lain',
    description = 'Prosesor M1 kencang'
WHERE id = 'P002';

-- ! MENGUBAH VALUE DENGAN YANG ADA DI KOLOM
UPDATE products
SET price = price + 5000
WHERE id = 'P003';


-- ! HAPUS DATA
INSERT INTO products(id,name,price,quantity) VALUES('P009', 'Bakso OKE' , 15000, 100);

-- ? Command : 
-- ? DELETE FROM nama_table
-- ? WHERE nama_kolom = value;
DELETE FROM products
WHERE id = 'P009';