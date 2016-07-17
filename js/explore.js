// PSEUDOCODE

// Goal: Create function that takes a string and reverses the string:
// - find the length of the string
// - loop through the characters by starting at index position that equals the length of the string and stop when it counts down to zero
// - for each iteration, add the letter to the variable

// BUSINESS LOGIC

function reverse(string) {
  var reverseString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    var reverseString = reverseString + (string[i]);
  }
  return reverseString;
}

// DRIVER CODE

console.log(reverse("hello"));

var reversedTest = reverse("This is a test!");
console.log(reversedTest);

if (1 == 1) {
  console.log(reverse("yes!!"));
}
else {
  console.log(reverse("no!!"));
}
