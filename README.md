# Data Warehouses Project

## Run ETL Instructions 

### Create dimensions first

1. Create schema inside a databbase in postgres
2. Open transformations for dimensions tables (customer, time, location, product) in Pentaho PDI Kettle - 'Spoon' dir
3. Configure source csv to local path in each transformation file
4. Configure your local connection in 'Table Output' in each transformation file
5. Run to create tables and populate them

### Create facts and agg tables

1. Open trasformation for facts and aggregation tables in Pentaho (order_item, order, agg_sales)
2. Configure source csv to local path in each transformation file
3. Configure each 'Table Input' in each file for your local db connection
4. Configure 'Table Output' in each file for your local db connection
5. Run to create tables and populate them
