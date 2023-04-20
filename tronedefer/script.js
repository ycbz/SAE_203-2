// Mode clair-sombre

function chgmttheme(){
    var mode = document.body;
    if (mode.classList.contains("sombre")){
      mode.classList.remove("sombre");
      mode.classList.add("clair");
	  document.getElementById("flechebas").src="Images/flechebasnoir.png";
    }
    else if (mode.classList.contains("clair")){
      mode.classList.remove("clair");
      mode.classList.add("sombre");
	  document.getElementById("flechebas").src="Images/flechebasblanche.png";
    }
  }

function setupListeners(){
	var changer = document.getElementById("clairsombre");
	changer.addEventListener("click",chgmttheme);
}

window.addEventListener("load",setupListeners);

// Carrousel

var counter = 1;
setInterval(function(){
    document.getElementById('radio' + counter).checked = true;
    counter++;
    if(counter > 4){
        counter = 1;
    }
}, 5000);

// Retour vers le haut de la page

document.addEventListener('DOMContentLoaded', function() {
    window.onscroll = function(ev) {
      document.getElementById("remontee").className = (window.pageYOffset);
    };
  });