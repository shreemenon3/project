create  database hotel;
use hotel;
select*from hotel.rooms;
select*from hotel.guest;
select*from hotel.bookings;

#1 Display the Room Number and Check-In Date.

SELECT rooms.RoomNo, bookings.CheckIn
FROM rooms
INNER JOIN bookings
ON rooms.RoomID = bookings.RoomID;

#2 Display bookings in ascending order of total amount

SELECT *
FROM bookings
ORDER BY TotalAmount ASC;
#3 Find the lowest room rate.
SELECT MIN(Rate)
FROM rooms;

#4Count the number of rooms in each room type.
SELECT Type, COUNT(*)
FROM rooms
GROUP BY Type;

#5 Display only those room types that have more than one room.
SELECT Type, COUNT(*)
FROM rooms
GROUP BY Type
HAVING COUNT(*) > 1;

#6 Display all rooms whose type starts with 'D'

SELECT *
FROM rooms
WHERE Type LIKE 'D%';

#7 Display bookings where the total amount is between 5000 and 10000.

SELECT *
FROM bookings
WHERE TotalAmount BETWEEN 5000 AND 10000;

#8 Display the payment status of guests

select*from hotel.guest where paymentstatus = "pending";

