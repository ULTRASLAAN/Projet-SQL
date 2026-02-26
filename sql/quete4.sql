#1
SELECT COUNT(*) AS total_vehicules FROM vehicules;

#2
SELECT localisation, COUNT(*) AS nb_vehicules FROM vehicules GROUP BY localisation;

#3
SELECT AVG(autonomie_km) AS autonomie_moyenne FROM vehicules;

#4
SELECT client.id_client, client.nom, client.prenom, COUNT(location.id_location) AS nb_locations
FROM client
LEFT JOIN location ON client.id_client = location.id_client
GROUP BY client.id_client, client.nom, client.prenom;
