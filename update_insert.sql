------------- inserts -------------------------


INSERT INTO customers (customer_id, first_name, last_name, email, billing_info)
VALUES
    ('1333', 'George', 'Lopez', 'clopez@email.com', '1221 Street st, Los Angeles CA 90210'),
    ('75434', 'Notgeorge', 'Notlopez', 'notlopez@email.com', '98 Lane st, Los Angeles CA 94920'),
    ('24557', 'Slim', 'Shady', 'slim@email.com', '765 Terrace Crt, Chicago IL 60660'),
    ('65324', 'Em', 'Inem', 'notshady@email.com', '111 Boulevard Ln, New York NY 84720'),
    ('07546', 'Frank', 'Enstein', 'monster@email.com', '8209 San Diego CA 13424');			
			
			
INSERT INTO orders (order_id, order_date, sub_total, total_cost, customer_id)
VALUES
    ('430970', '08/02/2023', '185.55', '199.54', '1333'),
    ('458901', '07/12/2023', '32.00', '38.35', '65324'),
    ('465433', '09/6/2023', '64.12', '69.38', '75434'),
    ('444433', '08/30/2023', '45.00', '52.99', '24557');


INSERT INTO tickets (ticket_id, quantity_tickets, order_id, movie_id)
VALUES
    ('1111', '3', '465433', '4665367'),
    ('1122', '1', '458901', '9967432'),
    ('1132', '8', '430970', '0976856'),
    ('1579', '3', '444433', '4738090'),
    ('1123', '4', '458901', '21443544');

INSERT INTO concessions (product_id, product_name, quantity_product, order_id)
VALUES
    ('980', 'popcorn', '1', '458901'),
    ('921', 'coke', '1', '458901'),
    ('980', 'popcorn', '3', '465433'),
    ('924', 'hotdogs', '3', '465433'),
    ('912', 'water', '5', '465433'),
    ('907', 'pretzel', '4', '430970'),
    ('980', 'popcorn', '2', '430970'),
    ('911', 'skittles', '4', '430970'),
    ('980', 'popcorn', '3', '444433'),
    ('903', 'nachos', '1', '444433'),
    ('965', 'icee', '4', '469752')
ON CONFLICT (product_id) DO NOTHING;

INSERT INTO movies (movie_id, title, language_, genre, rating)
VALUES
    ('4738090', 'Iron Man', 'english', 'action', 'PG-13'),
    ('4665367', 'Inglorious Basterds', 'english', 'action', 'R'),
    ('21443544', 'The Woman King', 'english', 'drama', 'R'),
    ('0976856', 'Avatar', 'english', 'fantasy', 'PG-13'),
    ('9967432', 'Gravity', 'english', 'drama', 'R');

   
   
--------------------- updates ----------------------------------------
   

ALTER TABLE concessions ALTER COLUMN product_id TYPE integer USING product_id::integer;


ALTER TABLE concessions RENAME COLUMN order_date TO order_id;

ALTER TABLE concessions ADD size_product varchar(50);

INSERT INTO orders (order_id, order_date, sub_total, total_cost, customer_id)
VALUES
    ('469752', '08/02/2023', '185.55', '199.54', '07546');
   
INSERT INTO concessions (product_id, product_name, quantity_product, size_product, order_id)
VALUES
    ('1', 'popcorn', '1', 'large', '458901'),
    ('2', 'coke', '1', 'large', '458901'),
    ('3', 'hotdogs', '3', 'medium', '465433'),
    ('4', 'water', '5', 'small', '465433'),
    ('5', 'pretzel', '4', 'small', '465433'),
    ('6', 'popcorn', '2', 'small', '430970'),
    ('7', 'skittles', '4', 'large', '430970'),
    ('8', 'popcorn', '3', 'large', '444433'),
    ('9', 'nachos', '1', 'medium', '444433'),
    ('10', 'icee', '4', 'large', '469752');
   
   
   
   
   
   
   
   
