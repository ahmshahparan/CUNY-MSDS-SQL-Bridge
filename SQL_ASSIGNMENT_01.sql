-- Assignment: SQL Select and Aggregations

-- 1. Which destination in the flights database is the furthest distance away, based on information in the flights table. Show the SQL query(s) that support your conclusion.

SELECT DISTINCT origin, dest, distance FROM flights WHERE distance IN (SELECT MAX(distance) FROM flights);

-- 2. What are the different numbers of engines in the planes table? For each number of engines, which aircraft have the most number of seats? Show the SQL statement(s) that support your result.

SELECT engines, MAX(seats) FROM planes GROUP BY engines;

-- 3. Show the total number of flights.

SELECT COUNT(*) FROM flights;

-- 4. Show the total number of flights by airline (carrier).

SELECT carrier, COUNT(*) FROM flights GROUP BY carrier;

-- 5. Show all of the airlines, ordered by number of flights in descending order.

SELECT carrier, COUNT(*) AS NumberOfFlights FROM flights GROUP BY carrier ORDER BY NumberOfFlights DESC;

-- 6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.

SELECT carrier, COUNT(*) AS NumberOfFlights FROM flights GROUP BY carrier ORDER BY NumberOfFlights DESC LIMIT 5;

-- 7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.

SELECT carrier, COUNT(*) AS NumberOfFlights from flights where distance	>=1000 group by carrier order by NumberOfFlights desc limit 5 ;

-- 8. Question : Show all the airlines by the number of delayed flights, which had flights from JFK in the month of January in a descending order.

SELECT carrier, COUNT(*) AS NumberOfDelayedFlights from flights where origin ="JFK" and dep_delay > 0 and month = 01 group by carrier order by NumberOfDelayedFlights desc ;