##CHALLENGE 3 Seeding the Database
INSERT IGNORE INTO cars (vin, manufacturer, year)
VALUES ('12345', 'ford', 2020), 
       ('12355', 'bmw', 2020), 
       ('12555', 'honda', 2019), 
       ('15555', 'daimler', 2020), 
       ('55555', 'fiat', 2018);
-- Inserting data into the 'customers' table
INSERT IGNORE INTO customers (customer_id, vin, invoice_number, city) 
VALUES ('54321', '12345', 'INV001', 'paris'), 
       ('55321', '12355', 'INV005', 'lyon'), 
       ('55521', '12555', 'INV008', 'paris'), 
       ('55551', '15555', 'INV010', 'marseille'), 
       ('55555', '55555', 'INV055', 'lyon');
-- Inserting data into the 'invoices' table
INSERT IGNORE INTO invoices (invoice_number, vin, customer_id, date, car, customer, staff_id)
VALUES ('INV001', '12345', '54321', '2022-03-15', 'Car1', 'John Doe', 'S001'),
       ('INV002', '12355', '55321', '2022-03-16', 'Car2', 'Jane Smith', 'S002'),
       ('INV003', '12555', '55521', '2022-03-17', 'Car3', 'Bob Johnson', 'S003'),
       ('INV004', '15555', '55551', '2022-03-18', 'Car4', 'Alice Brown', 'S004'),
       ('INV005', '55555', '55555', '2022-03-19', 'Car5', 'Charlie Green', 'S005');
-- Inserting data into the 'salespersons' table
INSERT IGNORE INTO salespersons (staff_id, name, store, vin)
VALUES ('S001', 'Alice', 'Store1', '12345'),
       ('S002', 'Bob', 'Store2', '12355'),
       ('S003', 'Charlie', 'Store3', '12555'),
       ('S004', 'David', 'Store4', '15555'),
       ('S005', 'Emma', 'Store5', '55555');