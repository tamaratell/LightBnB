-- When the users come to our home page, they are going to see a list of properties. They will be able to view the properties and filter them by location. They will be able to see all data about the property, including the average rating.

-- Objective:
-- Show specific details about properties located in Vancouver including their average rating.
  -- Select the id, title, cost_per_night, and an average_rating from the properties table for properties located in Vancouver.
  -- Order the results from lowest cost_per_night to highest cost_per_night.
  -- Limit the number of results to 10.
  -- Only show listings that have a rating >= 4 stars.

--Expected: 
--  id  |       title        | cost_per_night |   average_rating
-- -----+--------------------+----------------+--------------------
--  224 | Nature bite        |          10526 | 4.1000000000000000
--  197 | Build they         |          34822 | 4.1000000000000000
--   47 | Aside age          |          35421 | 4.2500000000000000
--  149 | Present television |          53062 | 4.2222222222222222
-- (4 rows)

SELECT properties.id, properties.title, properties.cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE properties.city LIKE '%ancouve%'
GROUP BY properties.id, properties.title, properties.cost_per_night
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;