# Airbnb Database ER Diagram Requirements

## 🎯 Objective
Design an Entity-Relationship Diagram (ERD) for the Airbnb-like database system.  
The goal is to identify the key entities, their attributes, and relationships.

---

## 🧱 Entities and Attributes

### 1. User
- user_id (PK)
- name
- email
- phone_number
- created_at

### 2. Property
- property_id (PK)
- host_id (FK → User.user_id)
- title
- description
- location
- price_per_night
- created_at

### 3. Booking
- booking_id (PK)
- user_id (FK → User.user_id)
- property_id (FK → Property.property_id)
- check_in_date
- check_out_date
- total_price
- status

### 4. Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- amount
- payment_date
- payment_method
- payment_status

### 5. Review
- review_id (PK)
- booking_id (FK → Booking.booking_id)
- rating
- comment
- created_at

---

## 🔗 Relationships
- A **User** can be a **Host** or **Guest**.
- A **User** can book many **Properties** (1-to-many).
- A **Property** belongs to one **Host** (many-to-1).
- A **Booking** is made by one **User** for one **Property**.
- Each **Booking** can have one **Payment**.
- Each **Booking** can have one **Review**.

---

## 📊 Tools
Create the diagram using [Draw.io](https://app.diagrams.net/).

Export the file as:
- `airbnb_erd.png`
- Place it in the `ERD/` directory.

---

## 📦 Submission Structure
