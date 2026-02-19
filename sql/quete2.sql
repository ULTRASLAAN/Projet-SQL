-- Quête 2 : Tri et filtres
-- 1. Afficher les véhicules triés par autonomie décroissante
SELECT * FROM vehicule ORDER BY autonomie_km DESC;

-- 2. Afficher les véhicules disponibles, triés par ville puis par marque
SELECT * FROM vehicule WHERE etat = 'disponible' ORDER BY ville, marque;

-- 3. Afficher la liste des clients par ordre alphabétique
SELECT * FROM client ORDER BY nom, prenom;
