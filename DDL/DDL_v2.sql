CREATE TABLE dimensional_model.customer
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