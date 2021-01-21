(10 points) Find the maximum price of tickets between Seattle and New York, NY (i.e. Seattle to NY or NY to Seattle). Show the maximum price for each airline separately.
 Name the output columns carrier and max_price, in that order.
 [Output relation cardinality: 3 rows]
 
 .header on
.mode column
.nullvalue NULL



select C.name as carrier , avg(price) as average_price

from FLIGHTS as F, CARRIERS as C 

WHERE 
C.cid = F.carrier_id and
(
(F.origin_city = "Seattle WA" and F.dest_city = "New York NY" )
or 
(F.dest_city = "Seattle WA" and F.origin_city = "New York NY")
)

group by C.cid

;
