SELECT 
    trips.*,
    bikes.*,
    start_stations.name AS start_station_name,
    start_stations.latitude AS start_station_latitude,
    start_stations.longitude AS start_station_longitude,
    end_stations.name AS end_station_name,
    end_stations.latitude AS end_station_latitude,
    end_stations.longitude AS end_station_longitude,
    users.*
FROM 
    trips
JOIN 
    bikes ON trips.bike_id = bikes.id
JOIN 
    stations AS start_stations ON trips.start_station_id = start_stations.id
JOIN 
    stations AS end_stations ON trips.end_station_id = end_stations.id
JOIN 
    users ON trips.user_id = users.id;

;