-- ! ada beberapa operator => < , > , = , >= , <= , != atau <>
SELECT * FROM products WHERE quantity > 50;

-- ! AND
SELECT * FROM products WHERE quantity > 10 AND price > 10000;

-- ! OR
SELECT * FROM products WHERE quantity > 10 OR price > 10000;

-- ! Prioritas dengan Kurung ()
SELECT * FROM products WHERE (quantity > 10 OR category = 'Makanan') AND price > 5000;


-- ! LIKE
--? %  = value sembarang
-- ? Command : LIKE '%b' => string akhirannya b 
-- ? Command : LIKE 'b%' => string awalannya b
-- ? Command : LIKE '%bakso%' => string yang isinya ada bakso
-- ? Command : NOT LIKE 
SELECT * FROM products 
WHERE name LIKE '%bakso%'; -- Berisi bakso

SELECT * FROM products 
WHERE name LIKE 'b%'; -- AWALAN b

SELECT * FROM products 
WHERE name LIKE '%m'; -- AKHIRANNYA m

-- ! CARI DATA NULL
-- ? Command : IS NULL
SELECT * FROM products 
WHERE description IS NULL;

SELECT * FROM products 
WHERE description IS NOT NULL;

-- ! BETWEEN
-- ? Sama kayak price >= 10000 and price <= 20000
SELECT * FROM products
WHERE price BETWEEN 10000 and 20000;

-- 02:27:00