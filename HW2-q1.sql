(10 points) List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc.
on Mondays. Also notice that, in the database, the city names include the state. 
So Seattle appears as Seattle WA. Please use the flight_num column instead of fid.
Name the output column flight_num.
[Hint: Output relation cardinality: 3 rows]


.header on
.mode column
.nullvalue NULL

select DISTINCT F.flight_num as flight_num
from FLIGHTS as F, CARRIERS as C, WEEKDAYS as W
where F.origin_city = "Seattle WA"
and F.dest_city = "Boston MA"
and C.name = "Alaska Airlines INC."

and W.day_of_week = "Monday"
and F.carrier_id = C.cid
and F.day_of_week_id = W.did;
