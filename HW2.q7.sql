(10 points) Find the total capacity of all direct flights that fly between Seattle and San Francisco, CA on July 10th (i.e. Seattle to SF or SF to Seattle).
 Name the output column capacity.
 [Output relation cardinality: 1 row]
 
 .header on
.mode column
.nullvalue NULL



select sum(F.capacity) as capacity

from FLIGHTS as F 

WHERE 

F.month_id= 7
and F.year= 2015
and F.day_of_month=10

and (
(F.origin_city = "San Francisco CA" and F.dest_city = "Seattle WA" )
or 
(F.dest_city = "Seattle WA" and F.origin_city = "San Francisco CA"));


