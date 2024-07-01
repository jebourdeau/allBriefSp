# Les bases du JavaScript

Cette fiche est destinée à fournir des ressources complémentaires pour vous aider à apprendre et à maîtriser JavaScript à travers une série d'exercices pratiques. Les ressources listées ci-dessous ont été sélectionnées pour compléter les exercices sans donner directement les réponses, afin de favoriser l'apprentissage actif et la résolution de problèmes.

Les ressources en ligne suivantes offrent des tutoriels, des guides et des références qui peuvent être utiles pour comprendre les concepts de base et avancés de JavaScript.

- [MDN Web Docs (Mozilla Developer Network)](https://developer.mozilla.org/fr/docs/Web/JavaScript): Une ressource incontournable pour tout développeur web. Le MDN offre une documentation complète sur JavaScript, y compris des guides pour débutants, des références de l'API et des exemples de code.
- [JavaScript.info](https://javascript.info/): Un site moderne pour apprendre JavaScript de zéro à avancé, avec des explications détaillées et des exemples interactifs.
- [freeCodeCamp](https://www.freecodecamp.org/): Propose un parcours d'apprentissage complet en JavaScript avec des exercices pratiques et des projets de programmation.
- [Codecademy](https://www.codecademy.com/learn/introduction-to-javascript): Offre un cours interactif sur JavaScript qui couvre les fondamentaux, les fonctions, les objets, et plus encore.


## Les keywords Javascript

Les mots-clés (ou keywords) en JavaScript sont des tokens réservés qui ont une signification spéciale pour le compilateur/interpréteur. Ils ne peuvent pas être utilisés comme identifiants (noms de variables, de fonctions, etc.) dans votre programme. Voici quelques-uns des mots-clés les plus couramment utilisés en JavaScript :

- `var`, `let`, `const` : pour déclarer des variables.
- `function` : pour déclarer des fonctions.
- `if`, `else` : pour exécuter des instructions conditionnelles.
- `for`, `while` : pour les boucles.
- `return` : pour retourner une valeur depuis une fonction.
- `true`, `false` : pour représenter les valeurs booléennes.
- `null` : pour représenter l'absence de valeur.
- `this` : pour accéder au contexte courant.
- `new` : pour créer des instances d'objets.
- `try`, `catch`, `finally` : pour le traitement des erreurs.

### Exemple
Une fonction `checkAge` qui prend un âge en argument et utilise `if` pour vérifier si l'âge est supérieur ou égal à 18. Si c'est le cas, utilise `return` pour retourner "Vous êtes majeur.", sinon retourne "Vous êtes mineur.".

```javascript
function checkAge(age) {
  if (age >= 18) {
    return "Vous êtes majeur.";
  } else {
    return "Vous êtes mineur.";
  }
}
```

## Les variables Javascript

En JavaScript, les variables sont utilisées pour stocker des données qui peuvent être modifiées et utilisées tout au long de votre programme. Il existe trois façons de déclarer des variables en JavaScript : en utilisant `var`, `let`, ou `const`.

- **`var`** : Déclare une variable avec une portée de fonction ou globale. Les variables déclarées avec `var` peuvent être re-déclarées et mises à jour.
- **`let`** : `let` permet de déclarer des variables avec une portée de bloc `{ }`, ce qui signifie qu'elles ne sont accessibles que dans le bloc où elles ont été déclarées. Les variables déclarées avec `let` peuvent être mises à jour mais pas re-déclarées dans le même bloc.
- **`const`** : Également introduit en ES6, `const` est utilisé pour déclarer des variables dont la valeur ne doit pas changer après leur affectation initiale. Comme `let`, `const` a une portée de bloc. Les variables déclarées avec `const` ne peuvent ni être mises à jour ni re-déclarées.

### Exemple
Un petit script qui déclare une variable `name` avec un nom en utilisant `let`, puis affiche cette variable dans la console. Change ensuite la valeur de cette variable en un prénom et l'affiche à nouveau dans le terminal.
Enfin, déclare une variable `birthYear` avec une année de naissance en utilisant `const`. La modification de cette variable (la ligne commenté) n'est pas possible et renvoi une erreure.

```javascript
let name = "Doe";
console.log(name); // Affiche "Doe"

name = "John";
console.log(name); // Affiche "John"

const birthYear = 1990;
console.log(birthYear); // Affiche 1990

// Essayons de modifier birthYear
// birthYear = 1991; // Cela va générer une erreur
```

## Les types javascript

JavaScript est un langage de programmation à typage dynamique, ce qui signifie que vous n'avez pas besoin de déclarer le type de variable lors de sa création. Le type d'une variable peut être déterminé à l'exécution, et une même variable peut stocker des types de données différents à différents moments. JavaScript possède six types primitifs et un type objet.

### Types Primitifs
- **String** : Représente une séquence de caractères (Nommé Chaine de caractères). Exemple : `"Hello world!"`.
- **Number** : Représente à la fois les nombres entiers et les nombres à virgule flottante. Exemple : `25`, `80.5`.
- **Boolean** : Représente une valeur logique vraie ou fausse. Exemple : `true`, `false`.
- **Undefined** : Représente une variable qui n'a pas été initialisée et dont la valeur est donc indéfinie.
- **Null** : Représente une absence délibérée de valeur.
- **Symbol** : Représente une valeur unique. Exemple: `Symbol("monId")`

### Type Objet
- **Object** : Représente une collection de propriétés. Un objet peut être utilisé pour stocker des collections de données et des entités plus complexes. Exemple : `{ name: "John", age: 30 }`.

### Exemple
Un objet `person` qui contient trois propriétés : `name`, `age`, et `isStudent`. `name` est une chaîne de caractères, `age` un nombre, et `isStudent` un booléen. Et ensuite, imprime cet objet dans la console.

```javascript
let person = {
  name: "Alice",
  age: 25,
  isStudent: true
};

console.log(person);
```

## Conversion des types Javascript

En JavaScript, la conversion de type (ou coercion de type) est le processus de conversion d'une valeur d'un type à un autre. C'est comme transformer une chaîne de caractères en nombre, ou inversement. Cette conversion peut être explicite ou implicite.

### Conversion explicite
La conversion explicite (aussi appelée conversion de type manuelle) se produit lorsque vous utilisez une fonction pour convertir explicitement une valeur d'un type à un autre. Par exemple, `Number("123")` convertit la chaîne de caractères `"123"` en nombre `123`.

### Conversion implicite
La conversion implicite (ou coercion de type) se produit lorsque JavaScript automatiquement convertit un type en un autre. Quand vous utilisez l'opérateur `==` (égalité faible), JavaScript convertit les types pour essayer de matcher les valeurs, ce qui peut conduire à des résultats inattendus. Par exemple, `"1" == 1` est `true` parce que JavaScript convertit la chaîne de caractères `"1"` en nombre avant de comparer.

C'est pourquoi il est recommandé d'utiliser l'opérateur `===` (égalité stricte), qui ne convertit pas les types et vérifie à la fois le type et la valeur.

### Exemple
Un script qui compare deux valeurs `a` et `b`. La première valeur `a` est la chaîne de caractères `"10"` et la seconde valeur `b` est le nombre `10`. Utilise d'abord `==` pour comparer les deux, puis `===`, et affiche les résultats dans la console pour voir la différence.

```javascript
let a = "10";
let b = 10;

console.log(a == b);  // Cela va afficher true à cause de la conversion implicite
console.log(a === b); // Cela va afficher false car les types sont différents
```

## Les opérateurs basiques

JavaScript fournit un ensemble riche d'opérateurs arithmétiques qui vous permettent d'effectuer des calculs mathématiques simples comme l'addition, la soustraction, la multiplication, et la division, ainsi que des opérations plus complexes comme le modulo (reste de la division) et l'exponentiation.

### Opérateurs de base
- **Addition (`+`)** : Additionne deux nombres ou concatène deux chaînes.
- **Soustraction (`-`)** : Soustrait un nombre d'un autre.
- **Multiplication (`*`)** : Multiplie deux nombres.
- **Division (`/`)** : Divise un nombre par un autre.
- **Modulo (`%`)** : Retourne le reste d'une division.
- **Exponentiation (`**`)** : Élève un nombre à la puissance d'un autre (introduit dans ES2016).

### Exemple
Un script qui calcule le carré d'un nombre `x` et le reste de la division de `y` par `z`. Utilise `x = 4`, `y = 15`, et `z = 2`. Et affiche ensuite les résultats dans la console.

```javascript
let x = 4;
let y = 15;
let z = 2;

let square = x ** 2; // Carré de x
let remainder = y % z; // Reste de la division de y par z

console.log("Le carré de", x, "est", square);
console.log("Le reste de la division de", y, "par", z, "est", remainder);
```

## Les comparaisons en JavaScript

JavaScript offre plusieurs opérateurs de comparaison qui vous permettent de comparer des valeurs. Ces opérateurs renvoient toujours un booléen `true` ou `false`. Comprendre ces opérateurs est crucial pour la logique conditionnelle dans vos scripts.

### Opérateurs de comparaison
- **Égalité faible (`==`)** : Compare deux valeurs pour l'égalité après avoir converti les deux valeurs dans un type commun. Peut entraîner des comportements inattendus en raison de la conversion de type implicite.
- **Inégalité faible (`!=`)** : L'inverse de `==`.
- **Égalité stricte (`===`)** : Compare à la fois le type et la valeur, sans conversion de type implicite.
- **Inégalité stricte (`!==`)** : L'inverse de `===`.
- **Supérieur à (`>`)**, **Supérieur ou égal à (`>=`)**, **Inférieur à (`<`)**, **Inférieur ou égal à (`<=`)** : Comparaisons numériques classiques.

### Exemple
Un script qui compare deux nombres `a` et `b`. Déclare `a = 10` et `b = 5` et les compare en utilisant chaque opérateur mentionné ci-dessus. Affiche dans la console les résultats dans la console.

```javascript
let a = 10;
let b = 5;

console.log("a == b:", a == b);   // false
console.log("a != b:", a != b);   // true
console.log("a === b:", a === b); // false
console.log("a !== b:", a !== b); // true
console.log("a > b:", a > b);     // true
console.log("a >= b:", a >= b);   // true
console.log("a < b:", a < b);     // false
console.log("a <= b:", a <= b);   // false
```

## Une explication sur le if statement

Le statement `if` est une structure de contrôle de flux fondamentale en JavaScript qui vous permet d'exécuter du code conditionnellement. Si la condition spécifiée dans le statement `if` est évaluée à `true`, le bloc de code associé est exécuté. Si la condition est évaluée à `false`, le bloc de code est ignoré. Vous pouvez également utiliser `else` et `else if` pour exécuter du code alternatif en fonction de plusieurs conditions.

### Syntaxe
```javascript
if (condition) {
  // bloc de code à exécuter si la condition est true
} else if (autreCondition) {
  // bloc de code à exécuter si la condition précédente est false et cette condition est true
} else {
  // bloc de code à exécuter si toutes les conditions précédentes sont false
}
```

### Exemple
Un script pour un site de vente en ligne qui applique des remises en fonction du montant total des achats d'un client. Ce script qui utilise `if`, `else if`, et `else` pour accorder une remise de 10% si le total des achats est supérieur ou égal à 100€, une remise de 5% si le total est supérieur ou égal à 50€ mais inférieur à 100€, et aucun rabais si le total est inférieur à 50€.

```javascript
let totalAchats = 75; // Essayez avec différentes valeurs
let remise;

if (totalAchats >= 100) {
  remise = totalAchats * 0.1;
} else if (totalAchats >= 50) {
  remise = totalAchats * 0.05;
} else {
  remise = 0;
}

console.log("Votre remise est de : " + remise + "€");
```

## Les opérateurs logiques

Les opérateurs logiques en JavaScript sont utilisés pour combiner ou inverser des conditions booléennes. Ces opérateurs sont essentiels pour construire des expressions conditionnelles complexes. Il existe trois opérateurs logiques principaux :

- **`&&` (ET logique)** : L'expression est `true` si, et seulement si, les deux opérandes sont `true`.
- **`||` (OU logique)** : L'expression est `true` si au moins une des opérandes est `true`.
- **`!` (NON logique)** : L'opérateur de négation inverse la valeur de vérité de son opérande. Si l'opérande est `true`, l'expression retourne `false`, et vice-versa.

### Exemple
Imaginez que vous créez un système de vérification pour un site web qui exige que les utilisateurs aient au moins 18 ans et acceptent les termes et conditions pour s'inscrire. Ce un script utilise les opérateurs logiques pour vérifier si un utilisateur remplit ces conditions. Et utilise des variables `age` et `accepteLesTermes` pour votre vérification, puis affiche ensuite un message approprié dans la console.

```javascript
let age = 21; // Essayez avec différentes valeurs
let accepteLesTermes = true; // Changez en false pour tester

if (age >= 18 && accepteLesTermes) {
  console.log("Inscription réussie.");
} else {
  console.log("Vous devez avoir au moins 18 ans et accepter les termes et conditions pour vous inscrire.");
}
```

## Les fonctions en JavaScript

Les fonctions en JavaScript sont des blocs de code conçus pour effectuer une tâche particulière. Elles sont exécutées lorsque quelque chose les invoque (appelle). Les fonctions peuvent prendre des paramètres, qui sont des valeurs utilisées par la fonction pour effectuer ses opérations, et peuvent retourner une valeur.

### Déclaration de fonction
Pour déclarer une fonction en JavaScript, vous pouvez utiliser le mot-clé `function` suivi du nom de la fonction, des parenthèses contenant éventuellement des paramètres, et des accolades englobant le corps de la fonction.

```javascript
function nomDeLaFonction(parametre1, parametre2) {
  // code à exécuter
}
```

### Fonctions fléchées
ES6 a introduit une syntaxe concise pour écrire des fonctions, connue sous le nom de fonctions fléchées. Elles permettent d'écrire des fonctions plus courtes pour les expressions de fonction.

```javascript
const nomDeLaFonction = (parametre1, parametre2) => {
  // code à exécuter
};
```

### Exemple
Une fonction `calculerSurface` qui prend la longueur et la largeur d'un rectangle et retourne sa surface. Ensuite, cette fonction calcule la surface d'un rectangle de longueur 5 et de largeur 7, et affiche le résultat dans la console.

```javascript
function calculerSurface(longueur, largeur) {
  return longueur * largeur;
}

let surface = calculerSurface(5, 7);
console.log("La surface du rectangle est : " + surface);
```

## Les boucles en JavaScript

Les boucles en JavaScript sont utilisées pour exécuter répétitivement un bloc de code tant qu'une condition spécifiée est évaluée comme vraie. Cela est particulièrement utile pour parcourir des structures de données, effectuer des tâches répétitives, et manipuler dynamiquement le contenu du DOM. JavaScript fournit plusieurs types de boucles pour gérer divers cas d'utilisation.

### Types de boucles
- **`for`** : Répète un bloc de code un nombre déterminé de fois.
- **`while`** : Exécute un bloc de code tant que la condition spécifiée est vraie.
- **`do...while`** : Exécute un bloc de code une fois, puis répète l'exécution tant que la condition spécifiée est vraie.
- **`for...in`** : Parcourt les propriétés énumérables d'un objet.
- **`for...of`** (introduit en ES6) : Parcourt les valeurs des éléments itérables comme les tableaux, les chaînes de caractères, et plus.

### Exemple
Une boucle `for` pour afficher les nombres de 1 à 10 dans la console. Utilise ensuite une boucle `while` pour faire la même chose.

```javascript
// Utilisation de for
for (let i = 1; i <= 10; i++) {
  console.log(i);
}

// Utilisation de while
let j = 1;
while (j <= 10) {
  console.log(j);
  j++;
}
```

## Les callbacks

Les callbacks sont des fonctions passées en tant qu'arguments à d'autres fonctions. Elles sont généralement utilisées pour gérer des opérations asynchrones en JavaScript, permettant à une fonction d'attendre la fin d'une certaine tâche avant de continuer son exécution. Les callbacks assurent que certaines parties du code ne s'exécutent qu'après la complétion d'autres parties, ce qui est crucial dans des opérations comme les requêtes réseau, les lectures de fichiers, ou tout autre processus dont le temps d'exécution est incertain.

### Exemple de Callback
Imaginons que vous ayez une fonction `faireRequete` qui simule une requête réseau et prend un callback comme argument. Ce callback est appelé une fois la requête terminée.

```javascript
function faireRequete(url, callback) {
  console.log(`Début de la requête à l'URL : ${url}`);
  // Simule un délai de requête
  setTimeout(() => {
    const reponse = "Réponse de " + url;
    callback(reponse);
  }, 2000);
}

faireRequete("http://example.com", function(reponse) {
  console.log("Réponse reçue : " + reponse);
});
```

Les callbacks sont un concept fondamental pour la programmation asynchrone en JavaScript, mais leur utilisation excessive peut mener à ce qu'on appelle "callback hell" ou "pyramid of doom", où de nombreux niveaux de fonctions imbriquées rendent le code difficile à lire et à maintenir.

### Exemple
Une fonction `processUserData` qui prend un ID utilisateur et un callback. Cette fonction simule la récupération de données utilisateur basée sur l'ID après un délai. Elle utilise ensuite ce callback pour afficher les données de l'utilisateur.

```javascript
function processUserData(userId, callback) {
  console.log(`Récupération des données pour l'utilisateur ${userId}`);
  setTimeout(() => {
    callback({ userId: userId, username: "NomUtilisateur" });
  }, 1500);
}

processUserData(10, function(data) {
  console.log("Données utilisateur récupérées :", data);
});
```

## Les Promises

Pour remédier aux inconvénients des callbacks, ES6 a introduit les Promises. Une Promise est un objet représentant l'achèvement ou l'échec d'une opération asynchrone. Elle peut se trouver dans l'un des trois états suivants : en attente (`pending`), accomplie (`fulfilled`), ou rejetée (`rejected`).

Les Promises permettent d'écrire du code asynchrone de manière plus lisible et évitent l'imbrication excessive des callbacks, facilitant ainsi la gestion des erreurs.

### Syntaxe de base d'une Promise
```javascript
let maPromise = new Promise(function(resolve, reject) {
  // Opération asynchrone ici

  if (/* succès */) {
    resolve(valeur);
  } else {
    reject(erreur);
  }
});
```

Pour utiliser une Promise, vous utilisez les méthodes `.then()` pour gérer les succès, `.catch()` pour les erreurs, et `.finally()` pour exécuter du code après que la Promise soit résolue ou rejetée.

### Exemple d'utilisation d'une Promise
```javascript
function obtenirDonnees(url) {
  return new Promise((resolve, reject) => {
    console.log(`Début de la requête à l'URL : ${url}`);
    // Simule un délai de requête
    setTimeout(() => {
      const reponse = "Réponse de " + url;
      resolve(reponse);
      // Pour simuler une erreur, utilisez `reject(new Error('Échec de la requête'));`
    }, 2000);
  });
}

obtenirDonnees("http://example.com")
  .then(reponse => console.log("Réponse reçue :", reponse))
  .catch(erreur => console.error("Erreur :", erreur))
  .finally(() => console.log("Requête terminée."));
```

Les Promises simplifient la gestion des opérations asynchrones en JavaScript, rendant le code plus clair et plus facile à suivre, surtout lorsqu'il est combiné avec `async/await` pour une syntaxe encore plus propre.

### Exemple
Un script qui utilise les Promises pour écrire une fonction `chargerUtilisateur` qui simule la récupération des données d'un utilisateur depuis une base de données après un délai. Ensuite, il gère les erreurs potentielles de cette opération asynchrone.

```javascript
function chargerUtilisateur(userId) {
  return new Promise((resolve, reject) => {
    console.log(`Récupération des données pour l'utilisateur ${userId}`);
    setTimeout(() => {
      // Simulons une réussite ou un échec basé sur l'ID utilisateur
      if (userId !== 0) {
        resolve({ userId: userId, username: "NomUtilisateur" });
      } else {
        reject(new Error("Utilisateur non trouvé"));
      }
    }, 1500);
  });
}

chargerUtilisateur(10)
  .then(data => console.log("Données utilisateur récupérées :", data))
  .catch(erreur => console.error("Erreur :", erreur));
```
