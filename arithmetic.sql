-- ! PERKALIAN
SELECT 10,10,10 * 10 as hasil;

-- ! PEMBAGIAN
SELECT id,name,price DIV 1000 as 'price in k' FROM products;
SELECT id,name,price,price DIV 1000 as 'price in k' FROM products;


-- ! MATHEMATICAL FUNCTIONS
SELECT id, COS(price), SIN(price), TAN(price) from products;
SELECT id, COS(price) as 'CPrice', SIN(price), TAN(price) from products;

SELECT id,name,price from products WHERE price DIV 1000 > 5;