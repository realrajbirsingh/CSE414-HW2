(10 points) Find the names of all airlines that ever flew more than 1000 flights in one day (i.e., a specific day/month, but not any 24-hour period). Return only the names of the airlines. Do not return any duplicates (i.e., airlines with the exact same name).
 Name the output column name.
 [Output relation cardinality: 12 rows]

.header on
.mode column
.nullvalue NULL
.width 100





select DISTINCT C.name as name

from FLIGHTS as F, CARRIERS as C 

WHERE 
C.cid = F.carrier_id

group by F.year, F.month_id, F.day_of_month, C.cid

having count(fid)>1000;
