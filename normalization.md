# Database Normalization (Airbnb Database)

## Step 1: First Normal Form (1NF)
- Ensured all attributes are atomic (no multiple values in one field).
- Example: Separated guest information from the booking record into a dedicated `users` table.

## Step 2: Second Normal Form (2NF)
- Removed partial dependencies.
- Example: Attributes like `user_email` and `user_phone` were moved from the `bookings` table to the `users` table since they depend only on the user, not on the booking.

## Step 3: Third Normal Form (3NF)
- Removed transitive dependencies.
- Example: Separated city and country data from `listings` into a new `locations` table.

## Result
The database design now satisfies **Third Normal Form (3NF)**, ensuring:
- No redundant data.
- Easier maintenance and updates.
- Improved data consistency across tables.
