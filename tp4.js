//trabajo práctico n4 - Villarreal Candelaria Com 3
//link youtube: https://youtu.be/Q--IGfOS0Yk
let estado = 0;
let personajeX;
let personajeY;
let charlyX = []; 
let charlyY = []; 
let numCharlys = 1; 
let charlySpeed = []; 
let charlyDiameter = []; 
let puntaje = 0;
let imagenes = [];
let botonReiniciarX;
let botonReiniciarY;
let botonAncho = 120;
let botonAlto = 50;

//cargar imágenes
function preload() {
  for (let i = 0; i < 2; i++) {
    imagenes[i] = loadImage("data/foto" + i + ".png");
  }
}

function setup() {
  createCanvas(600, 600);
  personajeX = width / 2; //hace que el personaje inicie en el centro
  personajeY = 550; //hace que el personaje este en la parte inferior de la pantalla
  botonReiniciarX = width / 2;
  botonReiniciarY = height / 2 + 100;
  charlysQueCaen(); 
}

function draw() {
  if (estado == 0) {
    estado0();
  } else if (estado == 1) {
    estado1();
  } else if (estado == 2) {
    estado2();
  } else if (estado == 3) {
    estado3();
  }
}

//pantalla de inicio y créditos
function estado0() {
  background(91, 129, 167);
  fill(130, 170, 211);
  rectMode(CENTER);
  rect(300, 350, 100, 50);
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Salva a Charly", 300, 200);
  textSize(20);
  text("Usa las flechas para mover la pileta hacia los costados y", 300, 250);
  text("evita que charly se estrelle contra el piso", 300, 270);
  fill(255);
  textSize(25);
  text("Iniciar", 300, 350);
  textSize(20);
  text("Créditos:", 300, 520);
  text("Tp4: introducción a p5.js", 300, 545);
  text("Programadora: Villarreal Candelaria", 300, 570);
}

//juego
function estado1() {
  background(0);
  rectMode(CENTER);
  fill(255);
  rect(300, 550, 610, 102);
  dibujarCharlys(); 
  personaje();
  puntos();
  perder();
}

//pantalla cuando perdes
function estado2() {
  background(142, 19, 21);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("Perdiste", 300, 300);
  //dibuja el botón de reinicio
  fill(126, 56, 50);
  rectMode(CENTER);
  rect(botonReiniciarX, botonReiniciarY, 120, 50);
  textSize(25);
  fill(255);
  text("Reiniciar", botonReiniciarX, botonReiniciarY);
  //verifica si se hizo clic en el botón
  if (
    mouseX > botonReiniciarX - botonAncho / 2 &&
    mouseX < botonReiniciarX + botonAncho / 2 &&
    mouseY > botonReiniciarY - botonAlto / 2 &&
    mouseY < botonReiniciarY + botonAlto / 2
  ) {
    if (mouseIsPressed) {
      //reinicia el juego al hacer clic en el botón
      estado = 0;
      puntaje = 0;
      charlysQueCaen(); 
    }
  }
}

//pantalla cuando ganas
function estado3() {
  background(76, 124, 84);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("Ganaste", 300, 300);
  //dibuja el botón de reinicio
  fill(50, 126, 76);
  rectMode(CENTER);
  rect(botonReiniciarX, botonReiniciarY, 120, 50);
  textSize(25);
  fill(255);
  text("Reiniciar", botonReiniciarX, botonReiniciarY);
  //verifica si se hizo clic en el botón
  if (
    mouseX > botonReiniciarX - botonAncho / 2 &&
    mouseX < botonReiniciarX + botonAncho / 2 &&
    mouseY > botonReiniciarY - botonAlto / 2 &&
    mouseY < botonReiniciarY + botonAlto / 2
  ) {
    if (mouseIsPressed) {
      //reinicia el juego al hacer clic en el botón
      estado = 0;
      puntaje = 0;
      charlysQueCaen(); 
    }
  }
}

//hace que el personaje se mueva en X
function keyPressed() {
  if (keyCode === LEFT_ARROW && estado == 1) {
    personajeX -= 25;
  } else if (keyCode === RIGHT_ARROW && estado == 1) {
    personajeX += 25;
  }
}
