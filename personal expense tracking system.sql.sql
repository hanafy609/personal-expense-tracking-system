create schema schema2;
use schema2;

create table categories(
category_id int primary key,
category_name varchar(50)
);


create table payment_method(
payment_id int primary key,
method_name varchar(50)
);

CREATE TABLE Expenses (
    expense_id INT PRIMARY KEY,
    category_id INT,
    amount DECIMAL(10, 2),
    date DATE,
    payment_id INT,
    description VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (payment_id) REFERENCES payment_method(payment_id)
);
INSERT INTO categories (category_id, category_name) VALUES
(1, 'Groceries'),
(2, 'Electronics'),
(3, 'Rent'),
(4, 'Cars');

INSERT INTO payment_method (payment_id, method_name) VALUES
(1, 'Cash'),
(2, 'Credit Card');

INSERT INTO expenses (expense_id, category_id, amount, date, payment_id, description)
VALUES (1, 1, 50.00, '2024-05-10', 1, 'Grocery shopping'),
(2, 3, 100.00, '2024-05-11', 2, 'House Rent'),
(3, 4, 300.00, '2024-05-12', 2, 'Car Bought'),
(4, 2, 200.00, '2024-05-13', 1, 'Mobile phone');




select *from expenses where amount > 100;

SELECT expenses.expense_id, expenses.amount, categories.category_name
FROM expenses
INNER JOIN categories ON expenses.category_id = categories.category_id;

SELECT * FROM expenses ORDER BY amount DESC;


