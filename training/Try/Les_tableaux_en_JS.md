# Les tableaux en JS

## Manipuler des Tableaux

### Qu'est-ce qu'un Tableau ?

En JavaScript, un tableau est une collection ordonnée d'éléments. Il peut contenir des éléments de tout type, y compris d'autres tableaux, ce qui permet de créer des structures de données complexes comme des tableaux multidimensionnels.

```javascript
let monTableau = [1, 2, 3, 4, 5];
let monTableauMultiDimensionnel = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
```

### Parcourir un Tableau

La première opération fondamentale avec les tableaux est de pouvoir parcourir leurs éléments. Il existe plusieurs façons de le faire, mais nous commencerons avec la boucle `for`.

```javascript
for (let i = 0; i < monTableau.length; i++) {
  console.log(monTableau[i]);
}
```

### Modifier un Tableau

Les tableaux en JavaScript sont dynamiques; vous pouvez ajouter, supprimer et modifier leurs éléments à la volée.

- **Ajouter des éléments** : Utilisez `push()` pour ajouter des éléments à la fin du tableau ou `unshift()` pour les ajouter au début.
- **Supprimer des éléments** : `pop()` supprime le dernier élément du tableau, et `shift()` supprime le premier élément.

### Rechercher dans un Tableau

Pour trouver un élément dans un tableau, vous pouvez utiliser `indexOf()` qui retourne l'index de la première occurrence de l'élément recherché, ou `-1` si l'élément n'est pas trouvé.

```javascript
let index = monTableau.indexOf(3);
if (index !== -1) {
  console.log(`L'élément est à l'index ${index}.`);
} else {
  console.log("L'élément n'est pas dans le tableau.");
}
```

### Filtrer un Tableau

La méthode `filter()` crée un nouveau tableau avec tous les éléments qui passent le test implémenté par la fonction fournie.

```javascript
let nombresPairs = monTableau.filter(function(el) {
  return el % 2 === 0;
});
console.log(nombresPairs);
```

### "Réduire" un Tableau

La méthode `reduce()` applique une fonction qui est un "accumulateur" et qui traite chaque valeur d'une liste (de gauche à droite) afin de la réduire à une seule valeur.

```javascript
let somme = monTableau.reduce((acc, val) => acc + val, 0);
console.log(somme);
```

Ce sont les bases de la manipulation de tableaux en JavaScript. Dans les sections suivantes, nous allons approfondir avec des exercices pratiques pour renforcer votre compréhension et vos compétences.

### Les Opérations de Base sur les Tableaux

Avant de plonger dans des manipulations plus avancées, il est crucial de maîtriser les opérations de base sur les tableaux. Ces opérations forment le socle sur lequel vous construirez des algorithmes plus complexes, notamment ceux liés au tri et à la recherche.

### Ajout et Suppression d'Éléments

- **Ajouter des éléments** :
  - `push(element1, ..., elementN)` ajoute un ou plusieurs éléments à la fin d'un tableau.
  - `unshift(element1, ..., elementN)` ajoute un ou plusieurs éléments au début.

- **Supprimer des éléments** :
  - `pop()` supprime le dernier élément d'un tableau et le retourne.
  - `shift()` supprime le premier élément d'un tableau et le retourne.

### Accéder et Modifier des Éléments

- **Accès direct** : `let element = tableau[index];`
- **Modification** : `tableau[index] = nouvelleValeur;`

### Parcourir un Tableau

- **Boucle `for` classique** : Idéale pour accéder à chaque élément par son index.
- **Boucle `for...of`** : Permet de parcourir les valeurs des éléments d'un tableau sans se soucier de l'index.

```javascript
for (let valeur of tableau) {
  console.log(valeur);
}
```

### Recherche d'Éléments

- **Trouver un élément avec `find`** :
  ```javascript
  let elementTrouve = tableau.find(element => element === valeurCherchee);
  ```

- **Trouver l'index d'un élément avec `findIndex`** :
  ```javascript
  let index = tableau.findIndex(element => element === valeurCherchee);
  ```

### Filtrage et Transformation

- **Filtrer avec `filter`** : Retourne un nouveau tableau contenant tous les éléments qui satisfont la condition spécifiée.

- **Transformer avec `map`** : Crée un nouveau tableau avec les résultats de l'appel d'une fonction fournie sur chaque élément du tableau appelant.

### Réduction

- **Réduire avec `reduce`** : Réduit un tableau à une valeur unique en appliquant une fonction à un accumulateur et à chaque valeur du tableau (de gauche à droite).

## Comment pratiquer ?

Pour solidifier votre compréhension, voici quelques exercices basés sur les concepts que nous venons de voir :

1. **Écrire une fonction qui retourne le nombre d'occurrences d'un élément dans un tableau.**

2. **Créer une fonction qui vérifie si tous les éléments d'un tableau sont pairs.**

3. **Développer une fonction qui retourne un nouveau tableau contenant les carrés de tous les éléments d'un tableau d'entrée.**


## Approfondissement : Manipulation Avancée des Tableaux

Après avoir maîtrisé les opérations de base, il est temps de s'aventurer dans des manipulations plus avancées des tableaux. Ces techniques vous permettront de résoudre des problèmes plus complexes et d'optimiser vos algorithmes.

### Trier un Tableau

Le tri est une opération fondamentale en informatique. JavaScript offre une méthode `sort()` pour trier les tableaux. Par défaut, `sort()` trie les éléments du tableau comme des chaînes de caractères. Pour un tri numérique ou personnalisé, vous devez fournir une fonction de comparaison.

```javascript
tableau.sort((a, b) => a - b); // Tri croissant
tableau.sort((a, b) => b - a); // Tri décroissant
```

### Fusionner des Tableaux

La méthode `concat()` permet de fusionner deux ou plusieurs tableaux en un seul tableau. C'est une opération non destructive; elle ne modifie aucun des tableaux originaux.

```javascript
let tableauFusionne = premierTableau.concat(secondTableau);
```

### Rechercher avec `some` et `every`

- **`some`** : Vérifie si au moins un élément du tableau passe le test implémenté par la fonction fournie.

- **`every`** : Vérifie si tous les éléments d'un tableau passent le test implémenté par la fonction fournie.

### Découper et Extraire des Segments de Tableau

- **`slice`** : Renvoie un objet tableau, contenant une copie superficielle (shallow copy) d'une portion du tableau d'origine, définie par un début et une fin (non inclus).

### Éliminer les Doublons

Pour éliminer les doublons d'un tableau, une technique courante consiste à utiliser `new Set()` pour créer un ensemble (qui ne peut contenir des doublons) et ensuite convertir cet ensemble en tableau.

```javascript
let uniqueElements = [...new Set(tableau)];
```

## Exercices Avancés

Pour mettre en pratique ces techniques avancées, voici quelques exercices :

1. **Écrire une fonction qui trie un tableau d'objets selon une propriété spécifiée.**

2. **Créer une fonction qui fusionne deux tableaux sans doublons.**

3. **Développer une fonction qui divise un tableau en chunks de taille spécifiée.**
