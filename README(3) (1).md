# 🕵️ Data Digger

> **A beginner-friendly MySQL database project for exploring, managing, and analyzing data using SQL.**

---

## 📌 Project Overview

**Data Digger** is a MySQL-based database project that demonstrates practical SQL operations on customer, order, product, and order-detail data.

The project covers essential database concepts such as:

- 🗂️ Database and table creation
- ➕ Data insertion
- 🔎 Data retrieval and filtering
- ✏️ Updating existing records
- 🗑️ Deleting records
- 📊 Sorting and aggregation
- 🔢 Counting and summing data
- 📈 Finding highest, lowest, and average values
- 🔗 Working with foreign-key relationships

---

## 🧩 Database Structure

The project contains **4 main tables**:

| Table | Purpose |
|---|---|
| 👤 `Customers` | Stores customer information |
| 🛒 `Orders` | Stores customer order information |
| 📦 `Products` | Stores product details, prices, and stock |
| 🧾 `OrderDetails` | Stores products and quantities included in orders |

### 🔗 Relationships

```text
Customers
    │
    └── CustomerID
          │
          ▼
       Orders
          │
          └── OrderID
                │
                ▼
          OrderDetails
                │
                └── ProductID
                      │
                      ▼
                   Products
```

---

## 🛠️ SQL Operations Covered

### 👤 Customers
- Create `Customers` table
- Insert customer records
- Display all customers
- Find a specific customer
- Update customer address
- Delete a customer

### 🛒 Orders
- Create `Orders` table
- Insert order records
- Display orders
- Find a specific order
- Update order amount
- Delete an order
- Find:
  - Highest order amount
  - Lowest order amount
  - Average order amount

### 📦 Products
- Create `Products` table
- Insert products
- Display products
- Sort products by price
- Update product price
- Find products with zero stock
- Delete products with zero stock
- Find products within a price range
- Find highest and lowest product prices

### 🧾 OrderDetails
- Create `OrderDetails` table
- Insert order-detail records
- Find details of a specific order
- Calculate total revenue
- Find top products by quantity
- Count how many times a specific product was sold

---

## 📊 Example Analysis

The project demonstrates SQL aggregate functions such as:

```sql
MAX()
MIN()
AVG()
SUM()
COUNT()
```

Example results from the project include:

| Analysis | Result |
|---|---:|
| Highest Order Amount | 1200.00 |
| Lowest Order Amount | 650.00 |
| Average Order Amount | 900.00 |
| Total Revenue | 32500.00 |
| Product ID 2 Times Sold | 2 |

---

## 💻 Technologies Used

- 🐬 **MySQL**
- 📝 **SQL**
- 💻 **MySQL Command Line / SQL Environment**

---

## 🚀 How to Run

1. Open MySQL.
2. Create/select the `DataDigger` database.
3. Run the SQL commands in the project file in order.
4. Execute each query to view the results.

```sql
CREATE DATABASE DataDigger;
USE DataDigger;
```

---

## 📁 Project Contents

```text
DataDigger/
│
├── README.md
└── DataDigger.sql
```

---

## 🎯 Learning Objectives

This project helps demonstrate practical understanding of:

- Relational databases
- Primary keys
- Foreign keys
- CRUD operations
- SQL filtering
- Sorting with `ORDER BY`
- Aggregate functions
- Basic data analysis
- Relationships between tables

---

## 👨‍💻 Author

**Krisha**

📚 *SQL / MySQL Database Project*  
💡 *Data Digger*

---

## ⭐ Project

If you found this project useful, feel free to ⭐ the repository!

---

### 📝 Note

This README is based on the SQL work completed in the **Data Digger** project.
