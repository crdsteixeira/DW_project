CREATE TABLE IF NOT EXISTS dimensional_model.customer
(
  customer_id BIGINT PRIMARY KEY
, first_name VARCHAR(11)
, last_name VARCHAR(12)
, zipcode NUMERIC(8, 1)
, latitude double precision
, longitude double precision
, segment_id BIGINT
, segment VARCHAR(11)
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.product
(
  product_id BIGINT PRIMARY KEY
, name VARCHAR(45)
, image VARCHAR(150)
, price double precision
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

CREATE TABLE IF NOT EXISTS dimensional_model.order_items
(
  product_id BIGINT
, order_time_id BIGINT
, discount double precision
, discount_rate double precision
, product_price double precision
, profit_ratio double precision
, quantity BIGINT
, sales double precision
, order_item_total double precision
)
;