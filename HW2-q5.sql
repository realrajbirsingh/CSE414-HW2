(10 points) Find all airlines that had more than 0.5% (= 0.005) of their flights out of Seattle canceled. Return the name of the airline and the percentage of canceled flights out of Seattle. Percentages should be outputted in percent format (3.5% as 3.5 not 0.035). Order the results by the percentage of canceled flights in ascending order.
 Name the output columns name and percentage, in that order.
 [Output relation cardinality: 6 rows]
 
 .header on
.mode column
.nullvalue NULL



select DISTINCT C.name as name, avg(CAST(F.canceled AS FLOAT)) as percent

from FLIGHTS as F, CARRIERS as C 

WHERE 
C.cid = F.carrier_id and
F.origin_city = "Seattle WA" 

group by C.cid

having percent > 0.005

order by percent asc;
