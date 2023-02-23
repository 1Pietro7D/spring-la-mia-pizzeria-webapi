INSERT INTO springpizzeriacrud.pizze(description, img_path, name, price) VALUES('mozzarella, pomodoro', 'https://picsum.photos/200/300', 'margherita', 6.50);
INSERT INTO springpizzeriacrud.pizze(description, img_path, name, price) VALUES('di tutto e di più', 'https://picsum.photos/200/300', 'fantasia del pizzaiolo', 10);
INSERT INTO springpizzeriacrud.pizze(description, img_path, name, price) VALUES('misto mare', 'https://picsum.photos/200/300', 'sapori di mare', 9);
INSERT INTO springpizzeriacrud.pizze(description, img_path, name, price) VALUES('ananas, na cosa barbarica', 'https://picsum.photos/200/300', 'ananas', 3.5);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-01-01', '2023-01-31','offerta gennaio', 1);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-02-01', '2023-02-28','offerta febbraio', 2);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-03-01', '2023-03-31','offerta marzo', 3);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-04-01', '2023-04-30','offerta aprile', 4);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-05-01', '2023-05-31','offerta maggio', 1);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-06-01', '2023-01-30','offerta giugno', 2);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-07-01', '2023-01-31','offerta luglio', 3);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES('2023-08-01', '2023-01-31', 'offerta agosto', 4);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-09-01', '2023-01-30','offerta settembre', 2);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-10-01', '2023-10-31','offerta ottobre', 3);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-11-01', '2023-11-30','offerta novembre', 3);
INSERT INTO springpizzeriacrud.offerte(data_inizio, data_fine,titolo, pizza_id) VALUES( '2023-12-01', '2023-12-31','offerta dicembre', 1);
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('pomodoro');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('mozzarella');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('ananas');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('salmone');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('tonno');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('olive');
INSERT INTO springpizzeriacrud.ingredients(name) VALUES('cipolla');
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(1,1);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(1,1);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,1);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,2);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,4);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,5);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,6);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(2,7);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(4,1);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(4,2);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(4,3);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(3,1);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(3,4);
INSERT INTO springpizzeriacrud.ingredient_pizza( pizza_id, ingredient_id) VALUES(3,5);