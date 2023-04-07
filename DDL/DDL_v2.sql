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
, city_id BIGINT
, city VARCHAR(35)
, state_id BIGINT
, state VARCHAR(36)
, country_id BIGINT
, country VARCHAR(25)
, region_id BIGINT
, region VARCHAR(20)
, market_id BIGINT
, market VARCHAR(12)
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.time
(
, time_id BIGSERIAL PRIMARY KEY
, minute INT
, hour_id INT
, hour INT
, week_day INT
, month_day INT
, month INT
, quarter INT
, year INT
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.order_items
(
  product_id BIGINT REFERENCES dimensional_model.product (product_id) ON DELETE SET NULL ON UPDATE CASCADE
, order_time_id BIGINT REFERENCES dimensional_model.time (time_id) ON DELETE SET NULL ON UPDATE CASCADE
, discount double precision
, discount_rate double precision
, product_price double precision
, profit_ratio double precision
, quantity BIGINT
, sales double precision
, order_item_total double precision
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.order
(
  customer_id BIGINT REFERENCES dimensional_model.customer (customer_id) ON DELETE SET NULL ON UPDATE CASCADE
, order_location_id BIGINT REFERENCES dimensional_model.location (location_id) ON DELETE SET NULL ON UPDATE CASCADE
, shipping_date BIGINT REFERENCES dimensional_model.time (time_id) ON DELETE SET NULL ON UPDATE CASCADE
, order_date BIGINT REFERENCES dimensional_model.time (time_id) ON DELETE SET NULL ON UPDATE CASCADE
, payment_type VARCHAR(8)
, days_for_shipping_real BIGINT
, days_for_shipment_scheduled BIGINT
, delivery_status VARCHAR(17)
, late_delivery_risk BIGINT
, profit_per_order DOUBLE PRECISION
, order_status VARCHAR(15)
, number_of_items DOUBLE PRECISION
, total_discount DOUBLE PRECISION
, total_price DOUBLE PRECISION
)
;

CREATE TABLE IF NOT EXISTS dimensional_model.agg_sales
(
  time_id BIGINT REFERENCES dimensional_model.time (time_id) ON DELETE SET NULL ON UPDATE CASCADE
, location_id BIGINT REFERENCES dimensional_model.location (location_id) ON DELETE SET NULL ON UPDATE CASCADE
, product_id BIGINT REFERENCES dimensional_model.product (product_id) ON DELETE SET NULL ON UPDATE CASCADE
, segment_id BIGINT
, sales DOUBLE PRECISION
)
;