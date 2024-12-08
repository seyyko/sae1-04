-- Table Ville
CREATE TABLE Ville (
    INSEE INT PRIMARY KEY,
    code_postale VARCHAR(10),
    departement VARCHAR(50),
    geolocalisation TEXT
);

-- Table Client
CREATE TABLE Client (
    numero_client INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    date_arrivee DATE,
    INSEE INT, -- Clé étrangère vers Ville
    CONSTRAINT fk_client_ville FOREIGN KEY (INSEE) REFERENCES Ville(INSEE)
);

-- Table Salarié
CREATE TABLE Salarie (
    numero_securite_sociale INT PRIMARY KEY,
    nom VARCHAR(50),
    date_naissance DATE,
    salaire INT CHECK (salaire > 0), -- Salaire doit être positif
    INSEE INT,
    CONSTRAINT fk_salarie_ville FOREIGN KEY (INSEE) REFERENCES Ville(INSEE)
);

-- Table Traiteur
CREATE TABLE Traiteur (
    id_traiteur VARCHAR(50) PRIMARY KEY,
    gamme_de_prix VARCHAR(50),
    nom VARCHAR(200),
    specialites VARCHAR(50),
    INSEE INT,
    CONSTRAINT fk_traiteur_ville FOREIGN KEY (INSEE) REFERENCES Ville(INSEE)
);

-- Table Restauration
CREATE TABLE Restauration (
    numero INT PRIMARY KEY,
    type_nourriture VARCHAR(50),
    horaire_ouverture TIME,
    horaire_fermeture TIME,
    capacite INT CHECK (capacite > 0), -- Capacité doit être positive
    type_alimentaire VARCHAR(50), -- Type alimentaire par extension
    CONSTRAINT check_type_alimentaire CHECK (type_alimentaire IN ('végétarien', 'omnivore')),
    numero_securite_sociale INT, -- Clé étrangère vers Salarié
    CONSTRAINT fk_restauration_salarie FOREIGN KEY (numero_securite_sociale) REFERENCES Salarie(numero_securite_sociale)
);

-- Table Activité
CREATE TABLE Activite (
    numero_activite INT PRIMARY KEY,
    type VARCHAR(50),
    horaire DATETIME,
    prix DECIMAL(15, 2) CHECK (prix >= 0), -- Prix non négatif
    reste_place BOOLEAN,
    numero_securite_sociale INT,
    CONSTRAINT fk_activite_salarie FOREIGN KEY (numero_securite_sociale) REFERENCES Salarie(numero_securite_sociale)
);

-- Table Tente
CREATE TABLE Tente (
    num_tente INT PRIMARY KEY,
    nombre_pers INT CHECK (nombre_pers BETWEEN 1 AND 6), -- Nombre de personnes entre 1 et 6
    qualite_sur_5 INT CHECK (qualite_sur_5 BETWEEN 0 AND 5), -- Qualité entre 0 et 5
    prix_de_la_semaine INT DEFAULT (7 * nombre_pers * qualite_sur_5), -- Prix par défaut
    CONSTRAINT check_prix_de_la_semaine CHECK (prix_de_la_semaine = 7 * nombre_pers * qualite_sur_5)
);

-- Table Participe (relation N:M entre Client et Activité)
CREATE TABLE Participe (
    numero_client INT,
    numero_activite INT,
    PRIMARY KEY (numero_client, numero_activite),
    CONSTRAINT fk_participe_client FOREIGN KEY (numero_client) REFERENCES Client(numero_client),
    CONSTRAINT fk_participe_activite FOREIGN KEY (numero_activite) REFERENCES Activite(numero_activite)
);

-- Table Reserve (relation N:M entre Client et Tente)
CREATE TABLE Reserve (
    numero_client INT,
    num_tente INT,
    duree_reservation INT CHECK (duree_reservation BETWEEN 7 AND 30), -- Durée entre 7 et 30 jours
    PRIMARY KEY (numero_client, num_tente),
    CONSTRAINT fk_reserve_client FOREIGN KEY (numero_client) REFERENCES Client(numero_client),
    CONSTRAINT fk_reserve_tente FOREIGN KEY (num_tente) REFERENCES Tente(num_tente)
);

-- Table Fournit (relation 1:N entre Traiteur et Restauration)
CREATE TABLE Fournit (
    id_traiteur VARCHAR(50),
    numero INT,
    PRIMARY KEY (id_traiteur, numero),
    CONSTRAINT fk_fournit_traiteur FOREIGN KEY (id_traiteur) REFERENCES Traiteur(id_traiteur),
    CONSTRAINT fk_fournit_restauration FOREIGN KEY (numero) REFERENCES Restauration(numero)
);
