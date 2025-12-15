# Blinkit DBMS Project

## 📌 Project Overview
This project represents a **relational database design for a Blinkit-like quick commerce platform**, created using **MySQL Workbench**.  
It models the core entities involved in online grocery delivery such as customers, stores, products, orders, payments, and delivery partners.

The repository consists of:
- **SQL schema file** (forward-engineered from MySQL Workbench)
- **ER Diagram (.mwb)** for conceptual and logical database design

---

## 📂 Files Included
- `Blinkit Schema DBMS.sql` – SQL script to create the database schema :contentReference[oaicite:0]{index=0}  
- `Blinkit DBMS ERD.mwb` – MySQL Workbench ER diagram file (visual data model)

---

## 🗄️ Database Schema
**Schema Name:** `mydb`  
**Database Engine:** InnoDB  
**Character Set:** UTF-8  

---

## 📊 Tables & Description

### 1. `customer`
Stores customer details.
- `customer_id` (PK)
- `first_name`
- `last_name`
- `phone`
- `email`
- `city`

---

### 2. `store`
Represents Blinkit dark stores.
- `store_id` (PK)
- `store_name`
- `city`
- `area`

---

### 3. `product`
Contains product information available at stores.
- `product_id` (PK)
- `product_name`
- `category`
- `price`
- `store_id` (logical FK → store)

---

### 4. `customer_order`
Stores order-level details.
- `order_id` (PK)
- `customer_id` (logical FK → customer)
- `store_id` (logical FK → store)
- `order_datetime`
- `total_amount`

---

### 5. `order_item`
Line-item details for each order.
- `order_item_id` (PK)
- `order_id` (logical FK → customer_order)
- `product_id` (logical FK → product)
- `quantity`

---

### 6. `delivery_partner`
Stores delivery personnel data.
- `partner_id` (PK)
- `first_name`
- `phone`
- `city`
- `status`

---

### 7. `payment`
Tracks payment transactions.
- `payment_id` (PK)
- `order_id` (logical FK → customer_order)
- `payment_method`
- `payment_status`
- `amount`

---

## 🔗 Relationships (Conceptual)
- One **customer** → many **orders**
- One **store** → many **products**
- One **order** → many **order_items**
- One **order** → one or more **payments**
- Products are store-specific
- Delivery partners are city-based and assigned operationally

*(Logical relationships are shown in the ER diagram; foreign key constraints are not explicitly enforced in SQL.)*

---

## ⚙️ How to Run the Project

1. Open **MySQL Workbench**
2. Create a new connection
3. Open `Blinkit Schema DBMS.sql`
4. Execute the script
5. The schema `mydb` and all tables will be created successfully

---

## 🧠 Design Highlights
- Normalized structure (avoids redundancy)
- Clear separation of orders and order items
- Scalable design for multi-store and multi-city operations
- Suitable for analytics like:
  - Sales per store
  - Customer purchase history
  - Product demand by category
  - Payment method usage

---

## 🚀 Use Cases
- Academic DBMS project
- ER modeling and normalization practice
- SQL query and analytics exercises
- Foundation for backend e-commerce systems

---

## 📌 Tools Used
- **MySQL Workbench**
- **MySQL (InnoDB Engine)**

---

## 📝 Future Enhancements
- Add foreign key constraints
- Include inventory management
- Add delivery assignment table
- Implement indexing for performance optimization

---

**Author:** Vansh Goel(341044) - Tanya Thukral(341058) - Uday Jhunjhunwala(341060)  
**Domain:** Quick Commerce / E-Grocery (Blinkit-inspired)
