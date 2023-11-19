let objJuego; //se usa para alamacenar una instancia de la clase Juego

//carga de imagenes
function preload() {
  tianaImage = loadImage('data/tiana.png');
  sapoImage = loadImage('data/sapo.png');
}

function setup() {
  createCanvas(600, 600);
  objJuego = new Juego();
}

function draw() {
  background(68, 95, 73);
  objJuego.dibujar(); //llama al método dibujar del objeto Juego para renderizar el juego en el lienzo
}

function keyPressed() {
  objJuego.teclaPresionada(keyCode);
}

//verifica si ganaste o perdiste y reinicia el juego
function mousePressed() {
  if (objJuego.ganaste || objJuego.perdiste) {
    objJuego.reiniciar();
  }
}
