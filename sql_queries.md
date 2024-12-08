
# SQL Queries

## 1. Trouver les clients ayant réservé une tente
**Description** : Cette requête permet de retrouver les clients ayant réservé une tente, avec les informations de la tente et la durée de réservation.
```sql
SELECT numero_client, num_tente, duree_reservation 
FROM Reserve;
```
### Résultat de la requête 1 : Trouver les clients ayant réservé une tente

| numero_client | num_tente | duree_reservation |
|---------------|-----------|-------------------|
| 1             | 1         | 14                |
| 2             | 2         | 7                 |
| 3             | 3         | 10                |
| 4             | 4         | 12                |
| 5             | 5         | 15                |
| 6             | 6         | 8                 |
| 7             | 7         | 21                |
| 8             | 8         | 25                |
| 9             | 9         | 30                |
| 10            | 10        | 9                 |




## 2. Trouver les clients ayant réservé une tente de plus de 7 personnes
**Description** : Cette requête permet de retrouver les clients ayant réservé une tente avec plus de 7 personnes.
```sql
SELECT numero_client, num_tente, duree_reservation 
FROM Reserve 
JOIN Tente ON Reserve.num_tente = Tente.num_tente 
WHERE Tente.nombre_pers > 7;
```

## 3. Trouver les activités disponibles aujourd'hui
**Description** : Cette requête permet de retrouver les activités dont la date est aujourd'hui.
```sql
SELECT numero_activite, type, horaire, prix, reste_place
FROM Activite 
WHERE DATE(horaire) = CURDATE();
```

## 4. Trouver les restaurants ouverts entre 8h et 20h
**Description** : Cette requête permet de retrouver les restaurants qui sont ouverts entre 8h et 20h.
```sql
SELECT numero, type_nourriture, horaire_ouverture, horaire_fermeture, capacite, type_alimentaire
FROM Restauration 
WHERE horaire_ouverture <= '20:00:00' AND horaire_fermeture >= '08:00:00';
```

## 5. Trouver les traiteurs d'une gamme de prix 'moyen'
**Description** : Cette requête permet de retrouver les traiteurs de gamme de prix 'moyen'.
```sql
SELECT id_traiteur, nom, specialites, gamme_de_prix 
FROM Traiteur 
WHERE gamme_de_prix = 'moyen';
```

## 6. Trouver les clients ayant participé à une activité avec un reste de place
**Description** : Cette requête permet de retrouver les clients ayant participé à une activité où il reste encore des places.
```sql
SELECT numero_client, numero_activite 
FROM Participe 
JOIN Activite ON Participe.numero_activite = Activite.numero_activite 
WHERE Activite.reste_place = TRUE;
```

## 7. Trouver les clients qui ont réservé une tente pendant plus de 14 jours
**Description** : Cette requête permet de retrouver les clients ayant réservé une tente pour une durée supérieure à 14 jours.
```sql
SELECT numero_client, num_tente, duree_reservation 
FROM Reserve 
WHERE duree_reservation > 14;
```

## 8. Trouver les salariés d'une ville donnée
**Description** : Cette requête permet de retrouver les salariés d'une ville spécifique.
```sql
SELECT numero_securite_sociale, nom, date_naissance, salaire
FROM Salarie 
WHERE INSEE = (SELECT INSEE FROM Ville WHERE code_postale = '75001');
```

## 9. Trouver les clients ayant réservé une tente et participé à une activité
**Description** : Cette requête permet de retrouver les clients ayant réservé une tente et participé à une activité.
```sql
SELECT Reserve.numero_client, Reserve.num_tente, Participe.numero_activite
FROM Reserve 
JOIN Participe ON Reserve.numero_client = Participe.numero_client;
```

## 10. Trouver les restaurants végétariens ouverts à partir de 8h
**Description** : Cette requête permet de retrouver les restaurants végétariens ouverts à partir de 8h.
```sql
SELECT numero, type_nourriture, horaire_ouverture, horaire_fermeture
FROM Restauration 
WHERE type_alimentaire = 'végétarien' AND horaire_ouverture <= '08:00:00';
```

## 11. Trouver les activités dont le prix est inférieur à 30€
**Description** : Cette requête permet de retrouver les activités dont le prix est inférieur à 30€.
```sql
SELECT numero_activite, type, prix 
FROM Activite 
WHERE prix < 30;
```

## 12. Trouver les clients ayant réservé une tente et dont la durée de réservation est supérieure à 7 jours
**Description** : Cette requête permet de retrouver les clients ayant réservé une tente pour une durée supérieure à 7 jours.
```sql
SELECT numero_client, num_tente, duree_reservation 
FROM Reserve 
WHERE duree_reservation > 7;
```
