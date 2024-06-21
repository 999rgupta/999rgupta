-- 1
select	
count(*)
from hotel;

-- 2
SELECT type_of_meal_plan, COUNT(type_of_meal_plan)  as most_ordered_meal 
FROM hotel 
GROUP BY type_of_meal_plan 
ORDER BY most_ordered_meal DESC;



-- 3
SELECT AVG(avg_price_per_room) 
	FROM hotel 
	WHERE no_of_children > 0;


-- 4
SELECT COUNT(*) 			
	FROM hotel 
	WHERE YEAR(arrival_date) = 2018;

-- 5
SELECT room_type_reserved, COUNT(room_type_reserved) as no_of_time_room_booked
FROM hotel
GROUP BY room_type_reserved
 ORDER BY no_of_time_room_booked DESC ;

-- 6
SELECT COUNT(no_of_weekend_nights) as no_of_reservations_on_weekend
FROM hotel 
WHERE no_of_weekend_nights > 0;


-- 7
SELECT  MAX(lead_time) as highest_lead_time, MIN(lead_time) as lowest_lead_time 
FROM hotel;


-- 8
SELECT market_segment_type, COUNT(market_segment_type) as count 
FROM hotel
GROUP BY market_segment_type 
ORDER BY count DESC ;


-- 9. 
SELECT COUNT(booking_status) as confirmed_bookings FROM hotel 
WHERE booking_status = “Not_canceled”;


-- 10.
	SELECT SUM(no_of_adults) as Adults, SUM(no_of_children) as Children
       FROM hotel;


-- 11.
SELECT AVG(no_of_weekend_nights)
 FROM hotel 
WHERE no_of_children > 0;



-- 12.
SELECT COUNT(booking_id) as no_of_reservations , MONTH(arrival_date) as month ,
YEAR(arrival_date) as year
 FROM hotel
 GROUP BY year, month
 ORDER BY no_of_reservations DESC; 


-- 13.
SELECT room_type_reserved, AVG(no_of_weekend_night) as avg_weekend_nights, AVG(no_of_week_night) as avg_week_nights 
 FROM hotel 
GROUP BY room_type_reserved;


-- 14.
SELECT room_type_reserved, COUNT(room_type_reserved) AS times_reserved, AVG(avg_price_per_room) AS average_price_of_room
 FROM hotel 
WHERE no_of_children > 0 
GROUP BY room_type_reserved                                                              
ORDER BY counts DESC;

-- 15.
SELECT market_segment_type, AVG(avg_price_per_room) AS average_price
 FROM hotel 
GROUP BY market_segment_type              
ORDER BY average_price DESC ;


