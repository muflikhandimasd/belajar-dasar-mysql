-- ! LOWER AND STRING LENGTH

SELECT id, LOWER(name) as 'Name Lower', LENGTH(name) as 'Name Length' FROM products;