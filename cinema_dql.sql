USE cinema_system;

-- a cinema, the same movie at the same hours in different rooms
SELECT s.date_session, s.start_time, s.end_time, m.title, c.name AS cinema_name, h.room_name
FROM session s
JOIN hall h ON s.id_hall = h.id
JOIN cinema c ON h.id_cinema = c.id
JOIN movies m ON s.id_movie = m.id
WHERE s.date_session = '2023-06-01'
  AND s.id_movie = 9
  AND s.start_time = '15:00'
  AND s.end_time = '17:00';

-- displaying the the capacity of a room and occupied capacity of a given session
SELECT c.name AS cinema_name, h.room_name AS cinema_room, m.title AS movie_title, COUNT(t.id) AS occupied_capacity, h.seating_capacity
FROM session s
JOIN hall h ON s.id_hall = h.id
JOIN cinema c ON h.id_cinema = c.id
JOIN movies m ON s.id_movie = m.id
LEFT JOIN ticket t ON s.id = t.id_session
WHERE s.date_session = '2023-06-01'
  AND s.start_time = '15:00'
  AND s.end_time = '17:00'
GROUP BY c.name, h.room_name, m.title, h.seating_capacity;

-- displaying the client's prices depending certain criterias
SELECT u.firstname, u.lastname, r.description, r.price
FROM ticket t
JOIN users u ON t.id_user = u.id
JOIN rate r ON t.id_rate = r.id
JOIN session s ON t.id_session = s.id
WHERE s.date_session = '2023-06-01'
  AND s.start_time = '15:00'
  AND s.end_time = '17:00';



-- FOR MORE EXERCISE 

-- 1-Sélectionner toutes les informations sur les films 
-- 2-Sélectionner le nom et l'adresse de tous les cinémas 
-- 3-Sélectionner les noms des utilisateurs et leur rôle 
-- 4-Sélectionner les films projetés dans une salle donnée (par exemple, salle '10A') 
-- 5-Sélectionner les détails d'une séance spécifique (par exemple, séance avec l'ID 1) 
-- 6-Sélectionner le nombre de billets vendus pour chaque film 
-- 7-Sélectionner le nom d'utilisateur, le numéro de siège et le film pour les billets réservés 
-- 8-Sélectionner les cinémas qui projettent un film spécifique (par exemple, 'Deli Aşk') 
