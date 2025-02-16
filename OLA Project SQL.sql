CREATE DATABASE ola;

# Retrieve all successful bookings
USE ola;
CREATE VIEW Successful_bookings AS
SELECT * FROM bookings WHERE booking_status = 'Success';

# Find the average ride distance for each vehicle type
SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_Distance FROM bookings GROUP BY Vehicle_Type;

# Get the total number of cancelled rides by customers
SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Canceled by Customer';

# List the top 5 customers who booked the highest number of rides
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides FROM bookings GROUP BY Customer_ID ORDER BY Total_Rides DESC LIMIT 5;

# Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT COUNT(*) FROM bookings WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

# Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT MAX(Driver_Ratings) as Max_Rating, MIN(Driver_Ratings) as Min_Rating FROM bookings WHERE Vehicle_Type = 'Prime Sedan';

# Retrieve all rides where payment was made using UPI
SELECT * FROM bookings WHERE Payment_Method = 'UPI';

# Find the average customer rating per vehicle type
SELECT AVG(Customer_Rating) AS Avg_Customer_Rating, Vehicle_Type FROM bookings GROUP BY Vehicle_Type;

# Calculate the total booking value of rides completed successfully
SELECT SUM(Booking_Value) AS Total_Booking_Value FROM bookings WHERE Booking_Status = 'Success';

# List all incomplete rides along with the reason
SELECT  Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides = 'Yes';

