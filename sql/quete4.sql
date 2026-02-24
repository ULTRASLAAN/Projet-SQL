-- Quête 4 : Fonctions d’agrégation
-- 1. Afficher le nombre total de véhicules
SELECT COUNT(*) AS total_vehicules FROM vehicules;

-- 2. Afficher le nombre de véhicules par ville
SELECT localisation, COUNT(*) AS nb_vehicules FROM vehicules GROUP BY localisation;

-- 3. Afficher l’autonomie moyenne des véhicules
SELECT AVG(autonomie_km) AS autonomie_moyenne FROM vehicules;

-- 4. Afficher le nombre de locations effectuées par client
SELECT client.id_client, client.nom, client.prenom, COUNT(location.id_location) AS nb_locations
FROM client
LEFT JOIN location ON client.id_client = location.id_client
GROUP BY client.id_client, client.nom, client.prenom;
