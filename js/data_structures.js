
// Release 0

// BUSINESS LOGIC

function addColor(newColor) {
    colors.push(newColor);
}

function addHorse(newHorse) {
    horseNames.push(newHorse);
}

// DRIVER CODE

var colors = ["blue", "outrageous orange", "electric ultramarine", "razzmatazz"];
var horseNames = ["Ed", "Elvis", "Endless Possibilities", "Exclamation Kid"];

// console.log(horseNames);
// addHorse("Eleanore Rigby");
// console.log(horseNames);


// Release 1

// BUSINESS LOGIC

var horses = {};
for (var i = 0; i < horseNames.length; i++) {
    horses[horseNames[i]] = colors[i];
}

// DRIVER CODE

console.log(horses)

