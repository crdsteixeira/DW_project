CREATE TABLE IF NOT EXISTS dimensional_model.customer
(
  customer_id BIGINT PRIMARY KEY
, first_name VARCHAR(11)
, last_name VARCHAR(12)
, zipcode NUMERIC(8, 1)
, latitude NUMERIC(20, 8)
, longitude NUMERIC(20, 8)
, segment_id DOUBLE PRECISION
, segment VARCHAR(11)
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.product
(
  product_id BIGINT PRIMARY KEY
, name VARCHAR(45)
, image VARCHAR(150)
, price BIGINT
, status BIGINT
, category_id BIGINT
, category_name VARCHAR(20)
, department_id BIGINT
, department_name VARCHAR(20)
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.location
(
  location_id BIGSERIAL PRIMARY KEY
, city_id DOUBLE PRECISION
, city VARCHAR(35)
, state_id DOUBLE PRECISION
, state VARCHAR(36)
, country_id DOUBLE PRECISION
, country VARCHAR(25)
, region_id DOUBLE PRECISION
, region VARCHAR(20)
, market_id DOUBLE PRECISION
, market VARCHAR(12)
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.time
(
, time_id BIGSERIAL PRIMARY KEY
, minute DOUBLE PRECISION
, hour_id DOUBLE PRECISION
, hour DOUBLE PRECISION
, week_day DOUBLE PRECISION
, month_day DOUBLE PRECISION
, month DOUBLE PRECISION
, quarter DOUBLE PRECISION
, year DOUBLE PRECISION
)
;
