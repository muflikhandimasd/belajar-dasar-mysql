-- ! Alias untuk kolom
-- ? Command as
SELECT id AS 'Kode', name as 'Nama', category as 'Kategori', description as 'Deskripsi', price as 'Harga' from products;
-- ATAU
SELECT id AS kode, name as nama, category as kategori, description as deskripsi, price as harga from products;

/* 
ASLINYA TUH DIA BEGINI
SELECT products.id AS kode, products.name as nama, products.category as kategori, products.description as deskripsi, products.price as harga from products;
*/

-- ! ALIAS untuk table
SELECT p.id AS kode, p.name as nama, p.category as kategori, p.description as deskripsi, p.price as harga from products as p;