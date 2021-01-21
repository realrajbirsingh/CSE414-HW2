(10 points) Compute the total departure delay of each airline across all flights. 
Some departure delays may be negative (indicating an early departure); 
they should reduce the total, so you don't need to handle them specially.
Name the output columns name and delay, in that order. [Output relation cardinality: 22 rows]

.header on
.mode column
.nullvalue NULL



select C.name as name, sum(F.departure_delay) as delay 

from FLIGHTS as F, CARRIERS as C 

where C.cid = F.carrier_id 

group by C.cid;

