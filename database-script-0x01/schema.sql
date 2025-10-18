-- schema.sql
-- Airbnb Database Schema (3NF)

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE hosts (
    host_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    bio TEXT,
    response_rate DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE properties (
    property_id INT PRIMARY KEY AUTO_INCREMENT,
    host_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    price_per_night DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES hosts(host_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('confirmed','cancelled','completed') DEFAULT 'confirmed',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES properties(property_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card','paypal','mpesa','bank_transfer'),
    status ENUM('pending','completed','failed') DEFAULT 'pending',
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

-- Indexes for performance
CREATE INDEX idx_property_city ON properties(city);
CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_booking_status ON bookings(status);
