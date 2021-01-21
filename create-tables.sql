IMPORTING THE FLIGHTS DATABASE (20 points)
To import the flights database into SQLite, you will need to run sqlite3 with a new database file. For example sqlite3 hw2.db. Then you can run CREATE TABLE statements to create the tables while specifying all key constraints as described above:

create table FLIGHTS (fid int PRIMARY KEY, year int, month_id int, day_of_month int, day_of_week_id int, carrier_id varchar, 
