-- Create database
CREATE DATABASE college_adm;

-- Use the database
USE college_adm;

-- Create table
CREATE TABLE col_table (
    Calculation1 VARCHAR(500),
    Campus VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Fall_Term INT,
    School VARCHAR(500),
    Sch_Src_FR VARCHAR(500),
    Ethn VARCHAR(255),
    adm INT,
    app INT,
    enr INT
);

-- Import data from CSV file
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Freshmen.xlsx'
INTO TABLE col_table
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Calculation1 ,Campus, City, State, Fall_Term, School, Sch_Src_FR, Ethn, adm, app,  enr);
