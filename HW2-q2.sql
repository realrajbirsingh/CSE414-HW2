(10 points) Find all itineraries from Seattle to Boston on July 15th. Search only for itineraries that have one stop (i.e., flight 1: Seattle -> [somewhere], flight2: [somewhere] -> Boston). 
Both flights must depart on the same day (same day here means the date of flight) and must be with the same carrier.
It's fine if the landing date is different from the departing date (i.e., in the case of an overnight flight). 
You don't need to check whether the first flight overlaps with the second one since the departing and arriving time of the flights are not provided.

header on
.mode column
.nullvalue NULL



select 
C.name as name, -- f1.fid as f1fid, f2.fid as f2fid,
f1.flight_num as f1_flight_num, f1.origin_city as f1_origin_city, f1.dest_city as f1_dest_city, f1.actual_time as f1_actual_time, 
f2.flight_num as f2_flight_num, f2.origin_city as f2_origin_city, f2.dest_city as f2_dest_city, f2.actual_time as f2_actual_time, 
f1.actual_time + f2.actual_time as actual_time

from FLIGHTS as F1, FLIGHTS as F2, CARRIERS as C, MONTHS as M

where M.month = "July"
and F1.day_of_month = 15
and F1.year = 2015
and F2.day_of_month = 15
and F2.year = 2015
and F1.origin_city = "Seattle WA"
and F2.dest_city = "Boston MA"
and f1.actual_time + f2.actual_time < 420
and F1.dest_city = F2.origin_city
and F1.carrier_id = F2.carrier_id
and F1.carrier_id = C.cid
and F1.month_id = M.mid
and F2.month_id = M.mid;
