CREATE TABLE locations (
  city_ID INTEGER PRIMARY KEY,
  city VARCHAR(32) DEFAULT NULL,
  state_ID INTEGER NOT NULL,
  states VARCHAR(32) DEFAULT NULL,
  country_ID INTEGER NOT NULL,
  country VARCHAR(32) DEFAULT NULL,
  region_ID INTEGER NOT NULL,
  region VARCHAR(32) DEFAULT NULL,
  market_ID INTEGER NOT NULL,
  market VARCHAR(32) DEFAULT NULL
);

CREATE TABLE times (
  time_ID INTEGER PRIMARY KEY,
  minutes INTEGER DEFAULT NULL,
  hours INTEGER DEFAULT NULL,
  days INTEGER DEFAULT NULL,
  months INTEGER DEFAULT NULL,
  years INTEGER DEFAULT NULL
);

CREATE TABLE date (
  date_ID INTEGER PRIMARY KEY,
  weekday INTEGER DEFAULT NULL,
  months INTEGER DEFAULT NULL,
  quarter INTEGER DEFAULT NULL,
  semester INTEGER DEFAULT NULL,
  years INTEGER DEFAULT NULL
);

CREATE TABLE product (
  card_ID INTEGER PRIMARY KEY,
  name VARCHAR(32) DEFAULT NULL,
  image VARCHAR(256) DEFAULT NULL,
  price NUMERIC(8,2) DEFAULT NULL,
  status VARCHAR(32) DEFAULT NULL,
  categoryID INTEGER NOT NULL,
  category_name VARCHAR(32) DEFAULT NULL,
  departmentID INTEGER NOT NULL,
  department_name VARCHAR(32) DEFAULT NULL
);

CREATE TABLE customer (
  customer_ID INTEGER PRIMARY KEY,
  first_name VARCHAR(32) DEFAULT NULL,
  last_name VARCHAR(32) DEFAULT NULL,
  zipcode INTEGER DEFAULT NULL,
  latitude NUMERIC(15,10) DEFAULT NULL,
  longitude NUMERIC(15,10) DEFAULT NULL,
  email VARCHAR(64) DEFAULT NULL,
  segment VARCHAR(32) DEFAULT NULL
);

CREATE TABLE orders (
  order_ID INTEGER PRIMARY KEY,
  location_ID INTEGER REFERENCES locations(city_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  customer_ID INTEGER REFERENCES customer(customer_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  order_time_ID INTEGER REFERENCES times(time_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  payment_type VARCHAR(32) DEFAULT NULL,
  item_total NUMERIC(8,2) DEFAULT NULL,
  profit_per_order NUMERIC(8,2) DEFAULT NULL,
  order_status VARCHAR(32) DEFAULT NULL,
  shipping_time_ID INTEGER REFERENCES times(time_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  days_shipping_scheduled INTEGER DEFAULT NULL,
  days_shipping_real INTEGER DEFAULT NULL,
  late_delivery_risk INTEGER DEFAULT NULL,
  delivery_status VARCHAR(32) DEFAULT NULL,
  shipping_mode VARCHAR(32) DEFAULT NULL,
  order_discount INTEGER DEFAULT NULL,
  order_number_items INTEGER DEFAULT NULL,
  order_price INTEGER DEFAULT NULL
);

CREATE TABLE order_items (
  order_item_ID INTEGER PRIMARY KEY,
  customer_ID INTEGER REFERENCES customer(customer_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  product_ID INTEGER REFERENCES product(card_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  item_discount NUMERIC(8,2) DEFAULT NULL,
  discount_rate NUMERIC(6,2) DEFAULT NULL,
  product_price INTEGER DEFAULT NULL,
  profit_per_item NUMERIC(8,2) DEFAULT NULL,
  quantity INTEGER DEFAULT NULL,
  sales NUMERIC(8,2) DEFAULT NULL,
  sales_after_discount NUMERIC(8,2) DEFAULT NULL
);

-- Here I changed from customer to location just because I think we should do it, but it's easy to change
CREATE TABLE sales ( 
  sales_ID INTEGER PRIMARY KEY,
  location_ID INTEGER REFERENCES locations(city_ID) ON DELETE SET NULL ON UPDATE CASCADE,
  total_sales NUMERIC(15,2) DEFAULT NULL
);
