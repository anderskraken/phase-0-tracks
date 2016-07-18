
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

// console.log(horses)


// Release 2

// BUSINESS LOGIC

function Car(brand, type, isElectric) {
    this.brand = brand;
    this.type = type;
    this.isElectric = isElectric;
    this.carHorn = function() { console.log("HONK!")}
}

// DRIVER CODE

var car1 = new Car("Tesla", "sedan", true);
var car2 = new Car("Audi", "sedan", false);

console.log(car1);
console.log(car2);

console.log("Testing car horn function:");
car1.carHorn();

for (var key in car1) {
  console.log(key, car1[key]);
}