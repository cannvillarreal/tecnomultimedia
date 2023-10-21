let objJuego;

function preload() {
  tianaImage = loadImage('data/tiana.png'); 
  sapoImage = loadImage('data/sapo.png');
}

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego(10);
}

function draw() {
  background(0);
  objJuego.dibujar();
}

function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}
