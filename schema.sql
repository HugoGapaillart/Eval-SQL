/* mysql -h localhost -u root -p kiceo < schema.sql */

DROP TABLE IF EXISTS Dessert;
DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Ligne;
DROP TABLE IF EXISTS Horaire;
DROP TABLE IF EXISTS Jour;
CREATE TABLE IF NOT EXISTS Station(
    id_station INT AUTO_INCREMENT,
    nom_station VARCHAR(50) NOT NULL,
    id_station_secondaire INT NULL,
    PRIMARY KEY(id_station),
    FOREIGN KEY(id_station_secondaire) REFERENCES Station(id_station)
);
CREATE TABLE IF NOT EXISTS Ligne(
    id_ligne INT AUTO_INCREMENT,
    num_ligne INT NOT NULL,
    nom_ligne VARCHAR(50),
    station_depart INT NOT NULL,
    station_fin INT NOT NULL,
    PRIMARY KEY(id_ligne),
    FOREIGN KEY(station_depart) REFERENCES Station(id_station),
    FOREIGN KEY(station_fin) REFERENCES Station(id_station)
);
CREATE TABLE IF NOT EXISTS Horaire(horaire TIME, PRIMARY KEY(horaire));
CREATE TABLE IF NOT EXISTS Jour(
    jour ENUM(
        'Lundi',
        'Mardi',
        'Mercredi',
        'Jeudi',
        'Vendredi'
    ) NOT NULL,
    PRIMARY KEY(jour)
);
CREATE TABLE IF NOT EXISTS Dessert(
    id_station INT,
    id_ligne INT,
    horaire TIME,
    jour ENUM(
        'Lundi',
        'Mardi',
        'Mercredi',
        'Jeudi',
        'Vendredi'
    ),
    PRIMARY KEY(id_station, id_ligne, jour, horaire),
    FOREIGN KEY(id_station) REFERENCES Station(id_station),
    FOREIGN KEY(id_ligne) REFERENCES Ligne(id_ligne),
    FOREIGN KEY(horaire) REFERENCES Horaire(horaire),
    FOREIGN KEY(jour) REFERENCES Jour(jour)
);
