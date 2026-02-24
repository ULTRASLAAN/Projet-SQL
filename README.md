# Projet SQL B1 – cIAra Mobility

## Présentation
Ce projet consiste à interroger une base de données PostgreSQL pour une entreprise fictive de location de véhicules électriques partagés : **cIAra Mobility**. L’objectif est de découvrir le langage SQL, comprendre la structure d’une base existante et répondre à des besoins métier concrets à l’aide de requêtes SQL.

## Membres du groupe
- Bektas Mustafa
- Ucar Berat
- Melo Rayann

## Structure du dépôt
```
/sql/quete1.sql   -- Découverte du SQL
/sql/quete2.sql   -- Tri et filtres
/sql/quete3.sql   -- Jointures
/sql/quete4.sql   -- Fonctions d’agrégation
/sql/quete5.sql   -- Cas métier
```

## Tables principales de la BDD
- **vehicule** (id_vehicule, marque, modele, type_vehicule, autonomie_km, etat, ville)
- **station** (id_station, nom, ville)
- **client** (id_client, nom, prenom, email)
- **location** (id_location, date_debut, date_fin, id_client, id_vehicule, id_station_depart, id_station_arrivee)

## Instructions d’utilisation
1. Ouvrir un terminal PostgreSQL ou pgAdmin.
2. Se connecter à la base de données fournie.
3. Exécuter les requêtes des fichiers SQL du dossier `/sql` selon les besoins.

## Présentation orale
- Présentation du contexte et de la structure de la BDD.
- Démonstration et explication de plusieurs requêtes.
- Maîtrise des mots-clés SQL (SELECT, WHERE, JOIN, GROUP BY, etc.).
- Capacité à modifier une requête en direct.

## Lien du dépôt GitHub
- [Lien vers le dépôt](https://github.com/ULTRASLAAN/Projet-SQL)