/*Создание составного индекса*/
CREATE INDEX orders_status_date_idx ON orders(status, date_created); 