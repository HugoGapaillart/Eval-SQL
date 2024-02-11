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

### Création
Exécutez la commande suivante :
```p
--mysql -h localhost -u root -p kiceo < schema.sql
```

### Ajout des données
Exécutez la commande suivante :
```p
--mysql -h localhost -u root -p kiceo < data.sql
```

### Requêtage
Exécutez la commande suivante :
```p
--mysql -h localhost -u root -p kiceo < requetes.sql
```

<div style="border: 2px dashed #998529; padding: 10px; background-color: #f2d13d33;">
  <code>root</code> <b>est un utilisateur par défaut, il se peut qu'il n'existe pas dans votre système, veuillez vous référez à la liste d'utilisateurs de votre base de données. </b>
</div>

## Conception

### Dictionnaire de données

| Donnée | Type |
|-----------|-----------|
| id_ligne  | ```INT AUTO_INCREMENT``` |
| numero_ligne | ```INT``` |
| nom_ligne | ```VARCHAR(50)```  |
| horaire | ```TIME``` |
| jour | ```ENUM('Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi')``` |
| id_station | ```INT AUTO_INCREMENT``` |
| nom_station | ```VARCHAR(50)``` |

### Modèle relationnel de données

| MCD | MLD |
|-----------|-----------|
| ![MCD](https://github.com/HugoGapaillart/Eval-SQL/blob/main/MCD%20MLD/MCD.png) | ![MLD](https://kilianMalherbe.github.io/controleSQL/MCD/MLD.png) |

