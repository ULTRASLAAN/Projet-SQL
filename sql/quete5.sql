-- Quête 5 : Cas métier
-- 1. Afficher les trois véhicules les plus autonomes actuellement disponibles
SELECT * FROM vehicules WHERE etat = 'disponible' ORDER BY autonomie_km DESC LIMIT 3;

-- 2. Afficher la ville possédant le plus de véhicules disponibles (affiche toutes les villes ex-aequo)
WITH dispo AS (
  SELECT localisation, COUNT(*) AS nb_disponibles
  FROM vehicules
  WHERE etat = 'disponible'
  GROUP BY localisation
)
SELECT localisation, nb_disponibles
FROM dispo
WHERE nb_disponibles = (SELECT MAX(nb_disponibles) FROM dispo);

-- 3. Afficher les clients ayant effectué au moins deux locations
SELECT client.id_client, client.nom, client.prenom, COUNT(location.id_location) AS nb_locations
FROM client
JOIN location ON client.id_client = location.id_client
GROUP BY client.id_client, client.nom, client.prenom
HAVING COUNT(location.id_location) >= 2;

-- 4. Afficher les véhicules n’ayant jamais été loués
SELECT vehicules.*
FROM vehicules
LEFT JOIN location ON vehicules.id = location.id_vehicule::text
WHERE location.id_vehicule IS NULL;

-- Ajout de véhicules disponibles pour test (BMW, Audi, Mercedes, Ford) avec immatriculation et année
INSERT INTO vehicules (id, marque, modele, autonomie_km, etat, localisation, immatriculation, annee)
VALUES
  (1001, 'BMW', 'iX', 600, 'disponible', 'Paris', 'AA-100-BB', 2024),
  (1002, 'Audi', 'e-tron GT', 590, 'disponible', 'Lyon', 'AB-200-CC', 2023),
  (1003, 'Mercedes', 'EQC', 580, 'disponible', 'Marseille', 'AC-300-DD', 2022),
  (1004, 'Ford', 'Mustang Mach-E', 570, 'disponible', 'Bordeaux', 'AD-400-EE', 2024);

-- Ajout d'un client nommé Rayan Melo
INSERT INTO client (id_client, nom, prenom, email)
VALUES (101, 'Melo', 'Rayan', 'rayan.melo@email.com');

-- Ajout de deux locations pour Rayan Melo
INSERT INTO location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)
VALUES
  (20, '2026-03-10', '2026-03-12', 101, 1001, 1, 2),
  (21, '2026-03-15', '2026-03-16', 101, 1002, 2, 3);

-- Ajout d'autres clients avec au moins deux locations chacun
INSERT INTO client (id_client, nom, prenom, email) VALUES
  (102, 'Dupont', 'Alice', 'alice.dupont@email.com'),
  (103, 'Martin', 'Lucas', 'lucas.martin@email.com');

-- Ajout de deux locations pour Alice Dupont
INSERT INTO location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES
  (22, '2026-03-20', '2026-03-22', 102, 1003, 1, 2),
  (23, '2026-03-25', '2026-03-26', 102, 1004, 2, 3);

-- Ajout de deux locations pour Lucas Martin
INSERT INTO location (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee) VALUES
  (24, '2026-03-28', '2026-03-29', 103, 1001, 1, 2),
  (25, '2026-04-01', '2026-04-02', 103, 1002, 2, 3);
