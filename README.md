# Data Warehouse Project

Masters in Data Science and Engineering  
Faculdade de Engenharia da Universidade do Porto

[Cátia Teixeira](https://github.com/crdsteixeira) | [Rojan Aslani](https://github.com/RojanAsl) | [Miguel Veloso](https://github.com/cmiguelsv) | [Luís Henriques](https://github.com/LuisPHenriques)

Data warehouses are centralized data repositories that integrate data from various systems, applications and sources.  
Supply chain encomapasses all of the facilities, functions, and activities involved in producing a product or service from suppliers to customers.  
In this work, light is shed on the importance of data warehousing solutions for supply chain management.

## Setup

* The Data Warehouse was implemented using PostgreSQL.
* The ETL was developed using Pentaho PDI.  
* The mondrian schema was done using Penatho Shema Workbench.  
* The dashboards required the use of Microsoft Power BI.

## Run ETL Instructions 

### Create dimensions first

1. Create schema inside a database in postgres
2. Open transformations for dimensions tables (customer, time, location, product) in Pentaho PDI Kettle - 'Spoon' dir
3. Configure source csv to local path in each transformation file
4. Configure your local db connection in 'Table Output' in each transformation file
5. Run to create tables and populate them

### Create facts and agg tables

1. Open trasformation for facts and aggregation tables in Pentaho (order_item, order, agg_sales)
2. Configure source csv to local path in each transformation file
3. Configure each 'Table Input' in each file for your local db connection where dimensions were created
4. Configure 'Table Output' in each file for your local db connection
5. Run to create tables and populate them

## Run Power BI Intructions

### Connect to local database

1. Go to 'Get Data'
2. Configure your local database created in previous steps for connection
