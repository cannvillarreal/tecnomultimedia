class Sapo {
  constructor(posX, posY) { //inicializa las propiedades del sapo, como la posición inicial, el tamaño, la imagen asociada, la velocidad en el eje Y, etc
    this.x = posX;
    this.y = posY;
    this.tamano = 100;
    this.image = sapoImage;
    this.velY = 6;
    this.colisiones = 0; // Contador de colisiones con el piso
  }
  
  //representa al sapo con la imagen 
  dibujar() {
    image(this.image, this.x, this.y, this.tamano, this.tamano);
  }
  
 //hace que el sapo caiga en el eje Y al aumentar su posición vertical basándose en la velocidad velY
  caer() {
    this.y += this.velY;
  }

//reinicia la posición del sapo colocándolo en la parte superior del lienzo (y = 0) y asignándole una nueva posición horizontal aleatoria
  reset() {
    this.y = 0;
    this.x = random(width);
  }
}
