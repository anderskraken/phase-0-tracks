console.log("script is running")

function rotate() {
    document.getElementById("cat").style.transform = "rotate(7deg)";
}

function addDisclaimer() {
  var para = document.createElement("p");
  var node = document.createTextNode("No cats were harmed in the making of this page.");
  para.appendChild(node);
  var element = document.getElementById("yet-more");
  element.appendChild(para);
}

rotate();

addDisclaimer();
