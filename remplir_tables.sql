-- Remplissage de la table Ville
INSERT INTO Ville (INSEE, code_postale, departement, geolocalisation)
VALUES 
(101, '75001', 'Paris', '48.8566,2.3522'),
(102, '69001', 'Lyon', '45.7640,4.8357'),
(103, '13001', 'Marseille', '43.2965,5.3698'),
(104, '33000', 'Bordeaux', '44.8378,-0.5792'),
(105, '59000', 'Lille', '50.6292,3.0573'),
(106, '31000', 'Toulouse', '43.6047,1.4442'),
(107, '44000', 'Nantes', '47.2186,-1.5536'),
(108, '37000', 'Tours', '47.3441,0.6899'),
(109, '29000', 'Quimper', '47.9918,-4.1062'),
(110, '74000', 'Annecy', '45.8992,6.1287');

-- Remplissage de la table Client
INSERT INTO Client (numero_client, nom, prenom, date_naissance, date_arrivee, INSEE)
VALUES 
(1, 'Dupont', 'Jean', '1985-05-14', '2024-12-01', 101),
(2, 'Martin', 'Marie', '1990-09-20', '2024-12-02', 102),
(3, 'Durand', 'Paul', '1988-07-11', '2024-12-03', 103),
(4, 'Petit', 'Julie', '1992-02-28', '2024-12-04', 104),
(5, 'Lemoine', 'Luc', '1995-01-17', '2024-12-05', 105),
(6, 'Leclerc', 'Isabelle', '1989-11-25', '2024-12-06', 106),
(7, 'Fournier', 'Michel', '1993-03-05', '2024-12-07', 107),
(8, 'Simon', 'Sophie', '1987-07-18', '2024-12-08', 108),
(9, 'Boucher', 'Lucie', '1984-10-22', '2024-12-09', 109),
(10, 'Moreau', 'François', '1990-12-30', '2024-12-10', 110);

-- Remplissage de la table Salarié
INSERT INTO Salarie (numero_securite_sociale, nom, date_naissance, salaire, INSEE)
VALUES 
(1001, 'Bernard', '1975-03-10', 2500, 101),
(1002, 'Morel', '1980-06-15', 2300, 102),
(1003, 'Rousseau', '1982-12-01', 2400, 103),
(1004, 'Noir', '1986-08-25', 2600, 104),
(1005, 'Blanc', '1990-11-05', 2200, 105),
(1006, 'Lemoine', '1981-09-03', 2500, 106),
(1007, 'Thomas', '1977-12-19', 2700, 107),
(1008, 'Dufresne', '1983-02-22', 2300, 108),
(1009, 'Lucas', '1984-11-14', 2600, 109),
(1010, 'Muller', '1988-06-04', 2400, 110);

-- Remplissage de la table Traiteur
INSERT INTO Traiteur (id_traiteur, gamme_de_prix, nom, specialites, INSEE)
VALUES 
('T1', 'moyen', 'Traiteur Gourmet', 'cuisine française', 101),
('T2', 'élevé', 'Saveurs Exquises', 'gastronomie italienne', 102),
('T3', 'bas', 'Petit Budget', 'snack rapide', 103),
('T4', 'moyen', 'Délices Marins', 'fruits de mer', 104),
('T5', 'élevé', 'Plaisirs Asiatiques', 'cuisine japonaise', 105),
('T6', 'moyen', 'Cuisine de Mamie', 'cuisine traditionnelle', 106),
('T7', 'bas', 'Resto Express', 'sandwichs', 107),
('T8', 'moyen', 'Le Gourmet Voyageur', 'cuisine du monde', 108),
('T9', 'élevé', 'Luxe Gastronomique', 'haute cuisine française', 109),
('T10', 'bas', 'Quick Bites', 'burgers et frites', 110);

-- Remplissage de la table Restauration
INSERT INTO Restauration (numero, type_nourriture, horaire_ouverture, horaire_fermeture, capacite, type_alimentaire, numero_securite_sociale)
VALUES 
(1, 'restaurant', '08:00:00', '20:00:00', 50, 'omnivore', 1001),
(2, 'fast-food', '10:00:00', '22:00:00', 30, 'végétarien', 1002),
(3, 'snack', '09:00:00', '18:00:00', 20, 'omnivore', 1003),
(4, 'bistrot', '11:00:00', '23:00:00', 40, 'omnivore', 1004),
(5, 'cantine', '07:00:00', '15:00:00', 100, 'végétarien', 1005),
(6, 'restaurant', '09:00:00', '21:00:00', 60, 'omnivore', 1006),
(7, 'fast-food', '10:00:00', '22:00:00', 25, 'végétarien', 1007),
(8, 'snack', '08:00:00', '20:00:00', 50, 'omnivore', 1008),
(9, 'bistrot', '12:00:00', '00:00:00', 30, 'omnivore', 1009),
(10, 'cantine', '06:30:00', '15:00:00', 150, 'végétarien', 1010);

-- Remplissage de la table Activité
INSERT INTO Activite (numero_activite, type, horaire, prix, reste_place, numero_securite_sociale)
VALUES 
(1, 'randonnée', '2024-12-08 08:00:00', 20.00, TRUE, 1001),
(2, 'escalade', '2024-12-08 10:00:00', 50.00, FALSE, 1002),
(3, 'kayak', '2024-12-08 14:00:00', 30.00, TRUE, 1003),
(4, 'yoga', '2024-12-08 16:00:00', 15.00, TRUE, 1004),
(5, 'vélo', '2024-12-08 18:00:00', 25.00, FALSE, 1005),
(6, 'randonnée', '2024-12-09 08:00:00', 20.00, TRUE, 1006),
(7, 'escalade', '2024-12-09 10:00:00', 50.00, TRUE, 1007),
(8, 'kayak', '2024-12-09 14:00:00', 30.00, FALSE, 1008),
(9, 'yoga', '2024-12-09 16:00:00', 15.00, TRUE, 1009),
(10, 'vélo', '2024-12-09 18:00:00', 25.00, TRUE, 1010);

-- Remplissage de la table Tente
INSERT INTO Tente (num_tente, nombre_pers, qualite_sur_5)
VALUES 
(1, 4, 3),
(2, 2, 4),
(3, 6, 5),
(4, 1, 2),
(5, 3, 3),
(6, 2, 4),
(7, 5, 3),
(8, 6, 5),
(9, 4, 4),
(10, 3, 2);

-- Remplissage de la table Participe
INSERT INTO Participe (numero_client, numero_activite)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Remplissage de la table Reserve
INSERT INTO Reserve (numero_client, num_tente, duree_reservation)
VALUES 
(1, 1, 14),
(2, 2, 7),
(3, 3, 10),
(4, 4, 12),
(5, 5, 15),
(6, 6, 8),
(7, 7, 21),
(8, 8, 25),
(9, 9, 30),
(10, 10, 9);

-- Remplissage de la table Fournit
INSERT INTO Fournit (id_traiteur, numero)
VALUES 
('T1', 1),
('T2', 2),
('T3', 3),
('T4', 4),
('T5', 5),
('T6', 6),
('T7', 7),
('T8', 8),
('T9', 9),
('T10', 10);

