-- -- Seed data for the "users" table
-- INSERT INTO users (name, email, password)
-- VALUES
--   ('John Doe', 'johndoe@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
--   ('Jane Smith', 'janesmith@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
--   ('Michael Johnson', 'michaeljohnson@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- -- Seed data for the "properties" table
-- INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
-- VALUES
--   (1, 'Cozy Cottage', 'A charming cottage in a serene location.', 'thumbnail1.jpg', 'cover1.jpg', 100, 2, 1, 2, 'Country A', '123 Main Street', 'City A', 'Province A', 'ABC123', TRUE),
--   (2, 'Luxury Villa', 'An exquisite villa with breathtaking views.', 'thumbnail2.jpg', 'cover2.jpg', 500, 4, 3, 5, 'Country B', '456 Elm Street', 'City B', 'Province B', 'DEF456', TRUE),
--   (3, 'Modern Apartment', 'A stylish apartment in the heart of the city.', 'thumbnail3.jpg', 'cover3.jpg', 200, 1, 1, 1, 'Country C', '789 Oak Street', 'City C', 'Province C', 'GHI789', TRUE);

-- -- Seed data for the "reservations" table
-- INSERT INTO reservations (start_date, end_date, property_id, guest_id)
-- VALUES
--   ('2023-06-01', '2023-06-07', 1, 2),
--   ('2023-07-15', '2023-07-25', 2, 3),
--   ('2023-08-10', '2023-08-15', 3, 1);

-- -- Seed data for the "property_reviews" table
-- INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
-- VALUES
--   (2, 1, 1, 4, 'The cottage was lovely and cozy.'),
--   (3, 2, 2, 5, 'The villa exceeded our expectations! Stunning views.'),
--   (1, 3, 3, 4, 'The apartment was modern and comfortable.');

-- Delete data from the "property_reviews" table
DELETE FROM property_reviews
WHERE guest_id IN (2, 3, 1) AND property_id IN (1, 2, 3);

-- Delete data from the "reservations" table
DELETE FROM reservations
WHERE property_id IN (1, 2, 3) AND guest_id IN (2, 3, 1);

-- Delete data from the "properties" table
DELETE FROM properties
WHERE owner_id IN (1, 2, 3);

-- Delete data from the "users" table
DELETE FROM users
WHERE name IN ('John Doe', 'Jane Smith', 'Michael Johnson');