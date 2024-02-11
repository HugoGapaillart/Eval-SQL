# Eval-SQL

- [Installation de la base](#installation-de-la-base)
  - [Création](#création)
  - [Ajout des données](#ajout-des-données)
  - [Requêtage](#requêtage)
- [Conception](#conception)
  - [Dictionnaire de données](#dictionnaire-de-données)
  - [Modèle relationnel de données](#modèle-relationnel-de-données)
- [Remarques](#remarques)
- [Références](#références)

## Installation de la base

### Création des tables
Exécutez la commande suivante :
```p
--mysql -u root -p kiceo < schema.sql
```

### Ajout des données dans les tables
Exécutez la commande suivante :
```p
--mysql -u root -p kiceo < data.sql
```

### Requêtage
Exécutez la commande suivante :
```p
--mysql -u root -p kiceo < requetes.sql
```

## Conception

### Dictionnaire de données

| Donnée | Type |
|-----------|-----------|
| id_ligne  | ```INT AUTO_INCREMENT``` |
| num_ligne | ```INT NOT NULL``` |
| nom_ligne | ```VARCHAR(50) NOT NULL```  |
| horaire | ```TIME``` |
| jour | ```ENUM('Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi')``` |
| id_station | ```INT AUTO_INCREMENT``` |
| id_station_secondaire | ```INT NOT NULL``` |
| nom_station | ```VARCHAR(50) NOT NULL``` |
| station_depart | ```INT NOT NULL``` |
| station_fin | ```INT NOT NULL``` |

### Modèle relationnel de données

| MCD | MLD |
|-----------|-----------|
| ![MCD](https://github.com/HugoGapaillart/Eval-SQL/blob/main/MCD%20MLD/MCD.png) | ![MLD](https://github.com/HugoGapaillart/Eval-SQL/blob/main/MCD%20MLD/MLD.png) |

