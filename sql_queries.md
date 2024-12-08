
## 1. Récupérer les clients qui participent aux activités "randonnée" ou "kayak".
**Description** : Utiliser une jointure entre les tables des clients, des participations et des activités. Filtrer les résultats sur les types d'activités "randonnée" et "kayak".
### Résultat de la requête 1 :
| nom      | prenom  | type      |
|----------|---------|-----------|
| Dupont   | Jean    | randonnée |
| Durand   | Paul    | kayak     |
| Leclerc  | Isabelle| randonnée |
| Simon    | Sophie  | kayak     |


## 2. Obtenir les salaires moyens des salariés par ville.
**Description** : Utiliser une jointure entre les salariés et les villes. Calculer la moyenne des salaires pour chaque ville en groupant par la colonne correspondant à la ville.
### Résultat de la requête 2 :
| departement  | salaire_moyen |
|--------------|---------------|
| Annecy       | 2400.0000     |
| Bordeaux     | 2500.0000     |
| Lille        | 2350.0000     |
| Lyon         | 2250.0000     |
| Marseille    | 2350.0000     |
| Nantes       | 2700.0000     |
| Paris        | 2650.0000     |
| Quimper      | 2600.0000     |
| Toulouse     | 2500.0000     |
| Tours        | 2300.0000     |


## 3. Lister les traiteurs qui fournissent des restaurants ou des fast-foods.
**Description** : Faire une jointure entre les traiteurs, les services qu'ils fournissent et les types de restauration. Filtrer sur les types de nourriture spécifiques ("restaurant" ou "fast-food").
### Résultat de la requête 3 :
| nom               | type_nourriture |
|-------------------|-----------------|
| Traiteur Gourmet  | restaurant      |
| Saveurs Exquises  | fast-food       |
| Cuisine de Mamie  | restaurant      |
| Resto Express     | fast-food       |


## 4. Obtenir les clients ayant réservé une tente pour plus de 20 jours.
**Description** : Faire une jointure entre les clients et les réservations. Appliquer une condition pour récupérer les clients ayant réservé une tente pendant plus de 20 jours.
### Résultat de la requête 4 :
| nom     | prenom  | duree_reservation |
|---------|---------|-------------------|
| Fournier| Michel  | 21                |
| Simon   | Sophie  | 25                |
| Boucher | Lucie   | 30                |


## 5. Obtenir le salaire maximum des salariés dans chaque ville.
**Description** : Utiliser une jointure entre les salariés et les villes. Utiliser la fonction MAX pour obtenir le salaire le plus élevé par ville et regrouper par ville.
### Résultat de la requête 5 :
| departement  | salaire_max |
|--------------|-------------|
| Annecy       | 2400        |
| Bordeaux     | 2600        |
| Lille        | 2500        |
| Lyon         | 2300        |
| Marseille    | 2400        |
| Nantes       | 2700        |
| Paris        | 2800        |
| Quimper      | 2600        |
| Toulouse     | 2500        |
| Tours        | 2300        |


## 6. Récupérer les clients qui n'ont pas réservé de tente.
**Description** : Utiliser une jointure gauche (LEFT JOIN) entre les clients et les réservations pour identifier ceux qui n'ont pas de réservation de tente.
### Résultat de la requête 6 :
| nom       | prenom   |
|-----------|----------|
| Gomez     | Carlos   |
| Bernier   | Alice    |
| Robert    | Charlotte|
| Joly      | Antoine  |
| Chevalier | Hélène   |


## 7. Trier les activités par prix en ordre décroissant.
**Description** : Sélectionner les activités et leurs prix. Utiliser la clause ORDER BY pour trier les résultats par prix, du plus élevé au plus bas.
### Résultat de la requête 7 :
| type      | prix  |
|-----------|-------|
| escalade  | 50.00 |
| escalade  | 50.00 |
| kayak     | 30.00 |
| kayak     | 30.00 |
| vélo      | 25.00 |
| vélo      | 25.00 |
| randonnée | 20.00 |
| randonnée | 20.00 |
| yoga      | 15.00 |
| yoga      | 15.00 |


## 8. Obtenir le nombre total de participants à chaque activité.
**Description** : Utiliser une jointure entre les activités et les participations. Utiliser la fonction COUNT pour compter le nombre de participants à chaque activité, puis grouper par activité.
### Résultat de la requête 8 :
| type       | nombre_participants |
|------------|---------------------|
| escalade   | 2                   |
| kayak      | 2                   |
| randonnée  | 2                   |
| vélo       | 2                   |
| yoga       | 2                   |


## 9. Récupérer les salariés avec un salaire supérieur à la moyenne des salaires de leur ville.
**Description** : Utiliser une sous-requête pour calculer la moyenne des salaires par ville et la comparer au salaire de chaque salarié en effectuant une jointure avec la ville.
### Résultat de la requête 9 :
| nom      | salaire | departement |
|----------|---------|-------------|
| Morel    | 2300    | Lyon        |
| Rousseau | 2400    | Marseille   |
| Noir     | 2600    | Bordeaux    |
| Benoit   | 2800    | Paris       |
| Renaud   | 2500    | Lille       |


## 10. Lister les villes ayant plus de 1 clients.
**Description** : Utiliser une jointure entre les villes et les clients. Compter le nombre de clients par ville et filtrer celles ayant plus d'un client.
### Résultat de la requête 10 :
| departement | nombre_clients |
|-------------|----------------|
| Bordeaux    | 2              |
| Lille       | 2              |
| Lyon        | 2              |
| Marseille   | 2              |
| Paris       | 2              |


## 11. Obtenir tous les types de nourriture, triés par ordre alphabétique.
**Description** : Combiner les types de nourriture dans les tables "Restauration" et "Traiteur" en utilisant UNION pour obtenir une liste distincte. Trier les résultats par ordre alphabétique.
### Résultat de la requête 11 :
| type_nourriture           |
|---------------------------|
| bistrot                   |
| burgers et frites         |
| cantine                   |
| cuisine du monde          |
| cuisine française         |
| cuisine japonaise         |
| cuisine traditionnelle    |
| fast-food                 |
| fruits de mer             |
| gastronomie italienne     |
| haute cuisine française   |
| restaurant                |
| sandwichs                 |
| snack                     |
| snack rapide              |


## 12. Obtenir les clients ayant réservé une tente ou participé à une activité.
**Description** : Utiliser une jointure gauche (LEFT JOIN) pour lier les clients aux réservations de tentes et aux participations aux activités, sans exclusion.
### Résultat de la requête 12 :
| nom      | prenom   |
|----------|----------|
| Dupont   | Jean     |
| Martin   | Marie    |
| Durand   | Paul     |
| Petit    | Julie    |
| Lemoine  | Luc      |
| Leclerc  | Isabelle |
| Fournier | Michel   |
| Simon    | Sophie   |
| Boucher  | Lucie    |
| Moreau   | François |
| Gomez    | Carlos   |
| Bernier  | Alice    |
| Robert   | Charlotte|
| Joly     | Antoine  |
| Chevalier| Hélène   |

