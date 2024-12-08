# Projet SQL : Création et interrogation de la base de données

## Objectifs

Ce projet consiste à créer et interroger une base de données relationnelle, en respectant des contraintes spécifiques, et en exécutant un ensemble de requêtes SQL.

## Contenu du livrable

### 1. Scripts SQL

#### a. Script de création des tables
Le script de création des tables inclut les contraintes de domaine, de clé primaire et de clé étrangère, en suivant une convention de nommage des contraintes.

#### b. Script de remplissage des tables
Le script remplit les tables avec au minimum 10 tuples par table.

#### c. Script de suppression des tables
Le script permet de supprimer toutes les tables créées.

#### d. Diagramme relationnel
Un diagramme en PDF illustrant le schéma relationnel de la base de données est inclus dans le livrable.

### 2. Requêtes SQL

#### a. Requêtes qualitatives
- Pour chaque requête, une description en français est fournie.
- Aucun code SQL n’est donné dans les descriptions.
- Les résultats attendus sont exprimés en commentaire avec un jeu de données de base.
- Toutes les tables doivent être utilisées dans les requêtes.
- Certaines requêtes portent sur l’utilisation de 3 tables minimum.

#### b. Requêtes quantitatives
- Au moins 2 requêtes contiennent des requêtes imbriquées (avec `=` ou `IN`).
- Une requête doit contenir au moins 2 requêtes imbriquées.
- Deux requêtes doivent inclure un tri (`ORDER BY ... DESC`).
- Trois requêtes doivent utiliser des fonctions (comptage, `MIN`, `MAX`, moyenne).
- Trois requêtes doivent utiliser des clauses `GROUP BY`.
- Trois requêtes doivent utiliser des opérateurs ensemblistes différents (différence, intersection, union).

## Structure des fichiers

- `.gitignore`          : Permet de cacher les requetes SQL (sql_anwser.md).
- `sql_anwser.md`       : Contient les requêtes SQL.
- `sql_queries.md`      : Contient les requêtes SQL sous forme de texte.
- `schema_diagram.pdf`  : Diagramme du schéma relationnel de la base de données.
- `create_tables.sql`   : Script de création des tables.
- `fill_tables.sql`     : Script de remplissage des tables.
- `drop_tables.sql`     : Script de suppression des tables.

## Deadline

La deadline pour ce livrable est le 8 décembre à 23h59.