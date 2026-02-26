#1
SELECT * FROM vehicules ORDER BY autonomie_km DESC;

#2
SELECT * FROM vehicules WHERE etat = 'Disponible' ORDER BY localisation, marque;

#3
SELECT * FROM client ORDER BY nom, prenom;
