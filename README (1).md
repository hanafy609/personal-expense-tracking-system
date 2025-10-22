# 💰 FinTrack – Personal Expense Management System

## 📝 Overview
**FinTrack** is a simple SQL-based expense tracking system designed to help users manage and analyze their personal or household spending.  
It organizes expenses into categories, supports multiple payment methods, and allows users to view spending trends through SQL queries.  

This project demonstrates key database concepts such as **schema design**, **foreign key relationships**, **data integrity**, and **query-based data analysis**.

---

## ⚙️ Features
- 🗂 **Expense Categorization** – Group expenses (e.g., Groceries, Rent, Cars, Electronics).  
- 💳 **Payment Tracking** – Record and distinguish between payment methods (e.g., Cash, Credit Card).  
- 📅 **Expense Records** – Store details such as amount, date, and description.  
- 📊 **Data Analysis Queries** – Retrieve insights such as:
  - Expenses above a certain amount  
  - Expenses joined with their categories  
  - Expenses ordered by amount  

---

## 🧩 Database Structure
### **Schema Name**
```sql
schema2
```

### **Tables**
1. **categories**
   - `category_id` (INT, PK)  
   - `category_name` (VARCHAR)

2. **payment_method**
   - `payment_id` (INT, PK)  
   - `method_name` (VARCHAR)

3. **expenses**
   - `expense_id` (INT, PK)  
   - `category_id` (FK → categories.category_id)  
   - `payment_id` (FK → payment_method.payment_id)  
   - `amount` (DECIMAL)  
   - `date` (DATE)  
   - `description` (VARCHAR)

---

## 🧠 Example Queries
### Get all expenses above 100:
```sql
SELECT * FROM expenses WHERE amount > 100;
```

### Join expenses with their categories:
```sql
SELECT expenses.expense_id, expenses.amount, categories.category_name
FROM expenses
INNER JOIN categories ON expenses.category_id = categories.category_id;
```

### Order expenses by amount (descending):
```sql
SELECT * FROM expenses ORDER BY amount DESC;
```

---

## 💾 Sample Data
```sql
INSERT INTO categories VALUES
(1, 'Groceries'), (2, 'Electronics'), (3, 'Rent'), (4, 'Cars');

INSERT INTO payment_method VALUES
(1, 'Cash'), (2, 'Credit Card');

INSERT INTO expenses VALUES
(1, 1, 50.00, '2024-05-10', 1, 'Grocery shopping'),
(2, 3, 100.00, '2024-05-11', 2, 'House Rent'),
(3, 4, 300.00, '2024-05-12', 2, 'Car Bought'),
(4, 2, 200.00, '2024-05-13', 1, 'Mobile phone');
```

---

## 🧱 Technologies Used
- **SQL / MySQL**
- **Relational Database Design**
- **Data Querying and Analysis**

---

## 🚀 How to Run
1. Open your SQL environment (e.g., MySQL Workbench).  
2. Create and use the schema:
   ```sql
   CREATE SCHEMA schema2;
   USE schema2;
   ```
3. Run the SQL commands in `project.sql`.  
4. Execute the sample queries to test functionality.

---

## 👨‍💻 Author
**Hanafi**  
Bachelor of Computer Systems Engineering  
October University for Modern Science & Arts (MSA)
