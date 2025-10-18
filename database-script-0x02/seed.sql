-- Airbnb Database Seeding Script
-- Inserts sample data into tables

-- Users
INSERT INTO users (user_id, name, email, phone)
VALUES
(1, 'John Doe', 'john.doe@email.com', '+254700123456'),
(2, 'Jane Smith', 'jane.smith@email.com', '+254701234567'),
(3, 'Ali Hassan', 'ali.hassan@email.com', '+254702345678');

-- Properties
INSERT INTO properties (property_id, user_id, title, location, price_per_night)
VALUES
(1, 1, 'Cozy Apartment in Nairobi', 'Nairobi, Kenya', 50.00),
(2, 2, 'Beachfront Villa', 'Mombasa, Kenya', 120.00),
(3, 3, 'Mountain Cabin Retreat', 'Nanyuki, Kenya', 75.00);

-- Bookings
INSERT INTO bookings (booking_id, user_id, property_id, check_in, check_out, total_price)
VALUES
(1, 2, 1, '2025-11-01', '2025-11-05', 200.00),
(2, 1, 2, '2025-12-10', '2025-12-15', 600.00),
(3, 3, 3, '2025-10-20', '2025-10-23', 225.00);

-- Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
(1, 1, 200.00, '2025-10-15', 'Credit Card'),
(2, 2, 600.00, '2025-10-16', 'PayPal'),
(3, 3, 225.00, '2025-10-17', 'M-Pesa');
