/* mysql -h localhost -u root -p kiceo < requetes.sql */

/* Question 1 */

/* 1. */
SELECT Dessert.horaire AS "Horaires à l'arrêt Madelaine (Lundi)"
FROM Dessert
    JOIN Station ON Dessert.id_station = Station.id_station
WHERE Station.nom_station = "Madeleine"
ORDER BY horaire;

/* 2. */
SELECT Dessert.horaire AS "Horaires à l'arrêt République (Lundi)"
FROM Dessert
    JOIN Station ON Dessert.id_station = Station.id_station
WHERE Station.nom_station = "République"
ORDER BY horaire;

/* Question 2 */
SET sql_mode =(
        SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', '')
    );
SELECT nom_station AS "Parcours de la ligne 2 Direction Kersec"
FROM Ligne
    JOIN Dessert ON Ligne.id_ligne = Dessert.id_ligne
    JOIN Station ON Dessert.id_station = Station.id_station
WHERE nom_ligne = "Direction Kersec"
GROUP BY nom_station
ORDER BY horaire;

/* Question 4 et 5 */
SELECT nom_station AS "Horaires à l'arrêt Petit Tohannic (Lundi)",
    CASE
        WHEN id_station_secondaire IS NOT NULL THEN CONCAT(
            "Arrêt temporairement non desservi, veuillez vous reporter à l'arrêt ",
            (
                SELECT ss.nom_station
                FROM Station s
                    INNER JOIN Station ss ON s.id_station_secondaire = ss.id_station
            )
        )
        ELSE (
            SELECT GROUP_CONCAT(
                    horaire
                    ORDER BY horaire
                )
            FROM Dessert d
                JOIN Station s ON d.id_station = s.id_station
            WHERE nom_station = 'Petit Tohannic'
        )
    END AS resultat
FROM Station s
WHERE nom_station = 'Petit Tohannic';

/* Question 7 */
SELECT nom_ligne AS "Ligne",
    GROUP_CONCAT(
        nom_station
        ORDER BY horaire
    ) AS "Arrêts desservis"
FROM (
        SELECT l.nom_ligne,
            s.nom_station,
            GROUP_CONCAT(
                DISTINCT d.horaire
                ORDER BY d.horaire
            ) AS horaire
        FROM Dessert d
            JOIN Ligne l ON d.id_ligne = l.id_ligne
            JOIN Station s ON d.id_station = s.id_station
        GROUP BY l.nom_ligne,
            s.nom_station
    ) AS distinct_results
GROUP BY nom_ligne;
