
// Release 0

// PSEUDOCODE

// GOAL:
// write a function that takes an array of words or phrases
// and returns the longest word or phrase in the array.
// So if we gave your function the array of
// ["long phrase","longest phrase","longer phrase"],
// it would return "longest phrase".
// This is a logical reasoning challenge, so try to reason
// through this based on what you already know, rather than
// Googling the fanciest solution or looking up built-in
// sorting functions. Note that "some string".length will do
// what you expect in JS.
// Add driver code that tests your function on a few arrays.

// STEPS:

// - assign an longestPhrase variable to an empty string
// - loop through the strings in the array
//    - compare each string with longestPhrase
//    - assign  it to longestPhrase if it is longer than the current string there.
// - once done, return the longestPhrase
// - driver code that
//    - assigns an array with strings to a variable
//    - prints out the returned value of the function

// BUSINESS LOGIC

function findLongestPhrase(arrayOfPhrases) {
  var longestPhrase = "";
  for (var i = arrayOfPhrases.length - 1; i >= 0; i--) {
    if (arrayOfPhrases[i].length > longestPhrase.length) {
      longestPhrase = arrayOfPhrases[i];
    }
  }
  return longestPhrase;
}

// DRIVER CODE

// var arr = ["long phrase", "longest phrase", "longer phrase"];
// console.log(findLongestPhrase(arr));
// var loremArr = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit", "Quid, si reviviscant Platonis illi et deinceps qui eorum auditores fuerunt, et tecum ita loquantur?", "Scisse enim te quis coarguere possit?"];
// console.log(findLongestPhrase(loremArr));


// Release 1

// PSEUDO CODE

// - create "for" loop which loops through keys of object 1
//   - in each iteration: create "for" loop which loops through keys of object 2
//     - in each iteration: return true if key AND value of object 1 equals key AND value of object 2
// - else return false

// BUSINESS LOGIC

function sharePair(object1, object2) {
  var k1;
  var k2;
  for (k1 in object1) {
    for (k2 in object2) {
      if ((k1 == k2) && (object1[k1] == object2[k2])) {
        return true;
      }
    }
  }
  return false;
}

// DRIVER CODE

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
var obj3 = {name: "Tamir", gender: "male", age: 54};
var obj4 = {}

console.log(sharePair(obj1, obj2))

console.log(sharePair(obj1, obj3))

console.log(sharePair(obj1, obj4))

