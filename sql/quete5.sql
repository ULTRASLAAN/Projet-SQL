-- Quête 5 : Cas métier
-- 1. Afficher les trois véhicules les plus autonomes actuellement disponibles
SELECT * FROM vehicule WHERE etat = 'disponible' ORDER BY autonomie_km DESC LIMIT 3;

-- 2. Afficher la ville possédant le plus de véhicules disponibles
SELECT ville, COUNT(*) AS nb_disponibles
FROM vehicule
WHERE etat = 'disponible'
GROUP BY ville
ORDER BY nb_disponibles DESC
LIMIT 1;

-- 3. Afficher les clients ayant effectué au moins deux locations
SELECT client.id_client, client.nom, client.prenom, COUNT(location.id_location) AS nb_locations
FROM client
JOIN location ON client.id_client = location.id_client
GROUP BY client.id_client, client.nom, client.prenom
HAVING COUNT(location.id_location) >= 2;

-- 4. Afficher les véhicules n’ayant jamais été loués
SELECT vehicule.*
FROM vehicule
LEFT JOIN location ON vehicule.id_vehicule = location.id_vehicule
WHERE location.id_vehicule IS NULL;
