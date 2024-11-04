--1--
--INSERTAR, MODIFICAR Y ELIMINAR DE CUSTOMER
INSERT INTO customer (store_id, first_name,last_name,email,address_id, activebool,create_date,last_update,active)
VALUES (1,'John','Doe','john.doe@example.com',1,1,'2020');

UPDATE  customer SET first_name =  'Jane' WHERE customer_id = 1;

DELETE FROM  customer WHERE customer_id = 1;

--INSERTAR, MODIFICAR Y ELIMINAR DE ACTOR
INSERT INTO actor (first_name, last_name, last_update)
VALUES  ('John', 'Doe', '2020');

UPDATE actor SET first_name =  'Jane' WHERE actor_id = 1;

DELETE FROM actor WHERE actor_id = 1;

--INSERTAR, MODIFICAR Y ELIMINAR DE STAFF
INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update, picture)
VALUES  ('John', 'Doe', 1, 'john.doe@example.com', 1, true,  'john', '123', '2020', 'image.jpg');

UPDATE staff  SET first_name =  'Jane' WHERE staff_id = 1;

DELETE FROM staff WHERE staff_id = 1;


--2--
SELECT r.*, c.* FROM rental r
INNER JOIN customer c
ON r.rental_id = c.customer_id
WHERE EXTRACT(YEAR FROM r.rental_date)=2005 
AND EXTRACT (MONTH FROM r.rental_date)=5;

--3--
SELECT payment_id as numero, payment_date as fecha, amount as total FROM payment;

--4--
SELECT * FROM film
WHERE release_year = 2006 AND rental_rate > 4.0;
