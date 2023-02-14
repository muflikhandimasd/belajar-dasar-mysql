-- ! Not Null auto Increment
CREATE TABLE admin(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
) ENGINE = INNODB;


DESCRIBE admin;


INSERT INTO admin(first_name,last_name)
VALUES('Muflikhan','Dimas'),
('Budi','Nugraha'),
('Joko','Pinter');

SELECT LAST_INSERT_ID();