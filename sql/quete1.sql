-- Quête 1 : Découverte du SQL
-- 1. Afficher tous les véhicules
-- Cette requête permet de lister tous les véhicules présents dans la base.
SELECT * FROM vehicule;

-- 2. Afficher uniquement les véhicules disponibles
-- On filtre sur la colonne etat pour ne garder que les véhicules disponibles.
SELECT * FROM vehicule WHERE etat = 'disponible';

-- 3. Afficher les véhicules situés dans une ville donnée
-- On filtre sur la colonne ville. Remplacez 'Paris' par la ville souhaitée.
SELECT * FROM vehicule WHERE ville = 'Paris';

-- 4. Afficher les véhicules ayant une autonomie supérieure à 400 km
-- On filtre sur la colonne autonomie_km.
SELECT * FROM vehicule WHERE autonomie_km > 400;
