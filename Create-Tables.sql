IMPORTING THE FLIGHTS DATABASE (20 points)
To import the flights database into SQLite, you will need to run sqlite3 with a new database file. For example sqlite3 hw2.db. Then you can run CREATE TABLE statements to create the tables while specifying all key constraints as described above:

create table FLIGHTS (fid int PRIMARY KEY, year int, month_id int, day_of_month int, 
          day_of_week int, carrier_id varchar(3), flight_num int, 
          origin_city varchar(34), origin_state varhcar(47),
          dest_city varchar(34), dest_state varchar(46), 
          departure_delay double, taxi_out double
          arrival_delay double, canceled int, acutal_time double,
          distance double, capacity int, price double);
          
         
 create table CARRIERS (cid varchar(7) PRIMARY KEY, name varchar(83));
 create table MONTHS (mid int PRIMARY KEY, month varchar(9));
 create table WEEKDAYS (did int PRIMARY KEY, day_of_week varchar(9));
 
 
  PRAGMA foreign_keys=ON;
  .mode csv
  .import flights-small.csv FLIGHTS 
  .import carriers.csv CARRIERS
  .import months.csv MONTHS
  .import weekdays.csv WEEKDAYS
  
