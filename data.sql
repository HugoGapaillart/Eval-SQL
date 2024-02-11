/* mysql -h localhost -u root -p kiceo < data.sql */

DELETE FROM Dessert;
DELETE FROM Station
WHERE id_station_secondaire IS NOT NULL;
DELETE FROM Station;
DELETE FROM Ligne;
DELETE FROM Horaire;
DELETE FROM Jour;
ALTER TABLE Station AUTO_INCREMENT = 1;
ALTER TABLE Ligne AUTO_INCREMENT = 1;
INSERT INTO Station (nom_station, id_station_secondaire)
VALUES ('PR+ Ouest', NULL),
    ('Fourchêne 1', NULL),
    ('Madeleine', NULL),
    ('République', NULL),
    ('PIBS 2', NULL),
    ('Delestraint', NULL),
    ('Kersec', NULL);
INSERT INTO Station (nom_station, id_station_secondaire)
VALUES ('Petit Tohannic', 6);
INSERT INTO Ligne (
        num_ligne,
        nom_ligne,
        station_depart,
        station_fin
    )
VALUES (2, 'Direction Kersec', 1, 8),
    (2, 'Direction P+R Ouest', 8, 1);
INSERT INTO Horaire
VALUES ('6:32'),
    ('6:34'),
    ('6:37'),
    ('6:42'),
    ('6:46'),
    ('6:50'),
    ('6:51'),
    ('6:52'),
    ('6:44'),
    ('6:47'),
    ('6:54'),
    ('6:55'),
    ('6:56'),
    ('6:57'),
    ('7:00'),
    ('7:01'),
    ('7:02'),
    ('7:05'),
    ('7:06'),
    ('7:07'),
    ('7:11'),
    ('7:17'),
    ('7:21'),
    ('7:22'),
    ('7:26'),
    ('7:10'),
    ('7:12'),
    ('7:16'),
    ('7:27'),
    ('7:31'),
    ('7:32'),
    ('7:36');
INSERT INTO Jour
VALUES ('Lundi'),
    ('Mardi'),
    ('Mercredi'),
    ('Jeudi'),
    ('Vendredi');
INSERT INTO Dessert
VALUES (1, 1, '6:32', 'Lundi'),
    (1, 1, '6:42', 'Lundi'),
    (1, 1, '6:52', 'Lundi'),
    (1, 1, '7:00', 'Lundi'),
    (1, 1, '7:10', 'Lundi'),
    (2, 1, '6:34', 'Lundi'),
    (2, 1, '6:44', 'Lundi'),
    (2, 1, '6:54', 'Lundi'),
    (2, 1, '7:02', 'Lundi'),
    (2, 1, '7:12', 'Lundi'),
    (3, 1, '6:37', 'Lundi'),
    (3, 1, '6:47', 'Lundi'),
    (3, 1, '6:57', 'Lundi'),
    (3, 1, '7:06', 'Lundi'),
    (3, 1, '7:16', 'Lundi'),
    (4, 1, '6:42', 'Lundi'),
    (4, 1, '6:52', 'Lundi'),
    (4, 1, '7:02', 'Lundi'),
    (4, 1, '7:12', 'Lundi'),
    (4, 1, '7:22', 'Lundi'),
    (5, 1, '6:46', 'Lundi'),
    (5, 1, '6:56', 'Lundi'),
    (5, 1, '7:07', 'Lundi'),
    (5, 1, '7:17', 'Lundi'),
    (5, 1, '7:27', 'Lundi'),
    (6, 1, '6:50', 'Lundi'),
    (6, 1, '7:00', 'Lundi'),
    (6, 1, '7:11', 'Lundi'),
    (6, 1, '7:21', 'Lundi'),
    (6, 1, '7:31', 'Lundi'),
    (7, 1, '6:51', 'Lundi'),
    (7, 1, '7:01', 'Lundi'),
    (7, 1, '7:12', 'Lundi'),
    (7, 1, '7:22', 'Lundi'),
    (7, 1, '7:32', 'Lundi'),
    (8, 1, '6:55', 'Lundi'),
    (8, 1, '7:05', 'Lundi'),
    (8, 1, '7:16', 'Lundi'),
    (8, 1, '7:26', 'Lundi'),
    (8, 1, '7:36', 'Lundi'),
    (8, 2, '6:32', 'Lundi'),
    (8, 2, '6:42', 'Lundi'),
    (8, 2, '6:52', 'Lundi'),
    (8, 2, '7:00', 'Lundi'),
    (8, 2, '7:10', 'Lundi'),
    (7, 2, '6:34', 'Lundi'),
    (7, 2, '6:44', 'Lundi'),
    (7, 2, '6:54', 'Lundi'),
    (7, 2, '7:02', 'Lundi'),
    (7, 2, '7:12', 'Lundi'),
    (6, 2, '6:37', 'Lundi'),
    (6, 2, '6:47', 'Lundi'),
    (6, 2, '6:57', 'Lundi'),
    (6, 2, '7:06', 'Lundi'),
    (6, 2, '7:16', 'Lundi'),
    (5, 2, '6:42', 'Lundi'),
    (5, 2, '6:52', 'Lundi'),
    (5, 2, '7:02', 'Lundi'),
    (5, 2, '7:12', 'Lundi'),
    (5, 2, '7:22', 'Lundi'),
    (4, 2, '6:46', 'Lundi'),
    (4, 2, '6:56', 'Lundi'),
    (4, 2, '7:07', 'Lundi'),
    (4, 2, '7:17', 'Lundi'),
    (4, 2, '7:27', 'Lundi'),
    (3, 2, '6:50', 'Lundi'),
    (3, 2, '7:00', 'Lundi'),
    (3, 2, '7:11', 'Lundi'),
    (3, 2, '7:21', 'Lundi'),
    (3, 2, '7:31', 'Lundi'),
    (2, 2, '6:51', 'Lundi'),
    (2, 2, '7:01', 'Lundi'),
    (2, 2, '7:12', 'Lundi'),
    (2, 2, '7:22', 'Lundi'),
    (2, 2, '7:32', 'Lundi'),
    (1, 2, '6:55', 'Lundi'),
    (1, 2, '7:05', 'Lundi'),
    (1, 2, '7:16', 'Lundi'),
    (1, 2, '7:26', 'Lundi'),
    (1, 2, '7:36', 'Lundi');
