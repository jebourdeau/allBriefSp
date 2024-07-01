import { assert } from 'chai';

import { reverseString , isPalindrome, countVowels } from '../';

describe('Chapter 1 -> Course 3', _ => {
  describe('Reverse a string', _ => {
    [...Array(5).keys()].map(_ => {
      const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
      const inputs = [...Array(Math.floor(Math.random() * 12)).keys()].reduce((acc, _) => [...acc, characters.charAt(Math.floor(Math.random() * characters.length))], []);
      const output = inputs.reduce((acc, value) => `${value}${acc}`, '');
      it(`should return the reverse string of ${inputs}, it must be equal to ${output.join()}`, done => {
        assert.equal(reverseString(input), output)
        done()
      })
    })
  });

  describe('Is a palindrome', _ => {
    const palindromes = ["radar", "niveau", "kayak", "reifier", "rotor", "solos", "ressasser", "esope", "elu par cette crapule", "la mariee ira mal", "a l ecart cet ane va evitant cet ecart la"];
    const notPalindromes = ["chaise", "ordinateur", "bibliotheque", "elephant", "girafe", "montagne", "riviere", "soleil", "voiture", "librairie", "univers", "42"];
    [...Array(5).keys()].map(_ => {
      const method = (Math.floor(Math.random() * 100)) % 2 == 0 ? palindromes : notPalindromes
      const input = method[Math.floor(Math.random() * method.length)]
      const output = palindromes.includes(input);
      it(`${input} should ${output ? '' : 'not '} be recognized as a palindromes`, done => {
        if(output)
          assert.isTrue(isPalindrome(input));
        else
          assert.isFalse(isPalindrome(input));
        done()
      })
    })
  })

  describe('Count vowels', _ => {
    const vowels = { aerodynamique: 6, education: 5, informatique: 5, oiseau: 5, universite: 5, cryptographie: 3, bicyclette: 3, ornithorynque: 4, algorithmique: 5, encyclopédie: 5 };
    [...Array(5).keys()].map(_ => {
      const input = Object.keys(vowels)[Math.floor(Math.random() * 1000)];
      const output = vowels[input];
      it(`should return the number of vowels of ${input}, it must be equal to ${output}`, done => {
        assert.equal(countVowels(input), output)
        done()
      })
    })
  })
})
