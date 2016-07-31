console.log("script is running")

function rotate(event) {
  console.log("image clicked, now rotated");
  event.target.style.transform = "rotate(7deg)";
}

function addDisclaimer(event) {
  var para = document.createElement("p");
  var node = document.createTextNode("The cat was not harmed in the rotation of this image.");
  para.appendChild(node);
  event.target.appendChild(para);
}

var cat = document.getElementById("cat");
cat.addEventListener("click", rotate);

var element = document.getElementById("yet-more");
element.addEventListener("click", addDisclaimer);
