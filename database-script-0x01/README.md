# Airbnb Database Schema (DDL)

This directory contains the SQL scripts for creating the Airbnb database schema, designed to store users, hosts, properties, bookings, reviews, and payments.

## Structure

- **Users**: Stores user information.
- **Hosts**: Links users who host properties.
- **Properties**: Contains property details and pricing.
- **Bookings**: Stores booking records and statuses.
- **Reviews**: Captures guest reviews and ratings.
- **Payments**: Handles booking payments and statuses.

## Normalization
The database schema follows **Third Normal Form (3NF)**:
- Each table represents one entity.
- No repeating groups or redundant data.
- Foreign keys ensure referential integrity.

## How to Use
1. Open MySQL or any SQL-compatible database.
2. Run:
   ```bash
   mysql> source schema.sql;
