/*Добавление в таблицу product атрибута для цены*/
ALTER TABLE product
    ADD COLUMN price double precision,
    ADD CONSTRAINT pk_product PRIMARY KEY (id);

/*Добавление в таблицу orders атрибута для даты создания*/
ALTER TABLE orders 
    ADD COLUMN date_created date,
    ADD CONSTRAINT pk_orders PRIMARY KEY (id);

/*Добавление внешних ключей*/
ALTER TABLE order_product 
    ADD CONSTRAINT fk_order FOREIGN KEY (order_id) 
    REFERENCES orders(id) ON DELETE CASCADE,
    
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id) 
    REFERENCES product(id) ON DELETE CASCADE;

/*Удаление ненужных таблиц*/
DROP TABLE IF EXISTS orders_date;
DROP TABLE IF EXISTS product_info;
DROP SEQUENCE IF EXISTS orders_date_order_id_seq;