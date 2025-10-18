# Database Seeding Script

## Overview
This script populates the Airbnb database with realistic sample data for testing and demonstration purposes.

## Entities Covered
- **Users**
- **Properties**
- **Bookings**
- **Payments**

## Usage
1. Ensure the schema is already created using the `schema.sql` script.
2. Run the following command in MySQL:
   ```bash
   mysql -u root -p alx_airbnb_db < seed.sql
