-- Quête 3 : Jointures
-- 1. Afficher la liste des locations avec le nom et le prénom du client
SELECT location.*, client.nom, client.prenom
FROM location
JOIN client ON location.id_client = client.id_client;

-- 2. Afficher la liste des locations avec la marque et le modèle du véhicule
SELECT location.*, vehicule.marque, vehicule.modele
FROM location
JOIN vehicule ON location.id_vehicule = vehicule.id_vehicule;

-- 3. Afficher la station de départ et la station d’arrivée pour chaque location
SELECT location.*, s1.nom AS station_depart, s2.nom AS station_arrivee
FROM location
JOIN station s1 ON location.id_station_depart = s1.id_station
JOIN station s2 ON location.id_station_arrivee = s2.id_station;
