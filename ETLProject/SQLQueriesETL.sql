-- Delete the table "wine_json"
DROP TABLE wine_json;

-- Re-create the table "wine_json" within wine_db
CREATE TABLE wine_json (
  id SERIAL PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  variety VARCHAR(150) NOT NULL,
  winery VARCHAR(150) NOT NULL,
  points int,
price decimal

);
-- Database: wine_db

-- DROP DATABASE wine_db;

CREATE DATABASE wine_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

--Drop table as needed to make edits	
DROP TABLE wine_table;

--Create tables
CREATE TABLE wine_table (
  country VARCHAR(30) NOT NULL,
  designation VARCHAR(100) NOT NULL,
  points int NOT NULL,
  price DECIMAL NOT NULL,
  province VARCHAR(50) NOT NULL,
  region VARCHAR(100) NOT NULL,
  taster_name VARCHAR(100) NOT NULL,
  title VARCHAR NOT NULL,
  variety VARCHAR(50) NOT NULL,
  winery VARCHAR(50) NOT NULL,
  vintage DATE NOT NULL,
  county VARCHAR(100) NOT NULL
  );