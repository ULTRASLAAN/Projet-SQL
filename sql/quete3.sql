#1
SELECT location.*, client.nom, client.prenom
FROM location
JOIN client ON location.id_client = client.id_client; 

#2
SELECT location.*, vehicules.marque, vehicules.modele
FROM location
JOIN vehicules ON location.id_vehicule::text = vehicules.id;

#3
SELECT location.*, s1.nom AS station_depart, s2.nom AS station_arrivee
FROM location
JOIN station s1 ON location.id_station_depart = s1.id_station
JOIN station s2 ON location.id_station_arrivee = s2.id_station;

-- Exemple d'insertion de stations pour tester la quête 3
INSERT INTO station (id_station, nom, ville) VALUES
  (1, 'Gare Centrale', 'Paris'),
  (2, 'Place Bellecour', 'Lyon'),
  (3, 'Vieux Port', 'Marseille');

-- Exemple d'insertion de données pour tester les requêtes de la quête 3
INSERT INTO location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)
VALUES
  (1, '2026-02-01', '2026-02-05', 1, 1, 1, 2),
  (2, '2026-02-10', '2026-02-12', 2, 2, 2, 3);
