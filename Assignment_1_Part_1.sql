show variables like 'local_infile';
set global local_infile = 1;

-- loadflights.sql
DROP TABLE IF EXISTS airlines;
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS flights;
DROP TABLE IF EXISTS planes;
DROP TABLE IF EXISTS weather;

CREATE TABLE airlines ( 
    carrier varchar(2) PRIMARY KEY, 
    name varchar(30) NOT NULL
    );  

LOAD DATA LOCAL INFILE '/home/ad14055576/Documents/IS362/Week 1/airlines.csv' 
INTO TABLE airlines 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;