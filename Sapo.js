class Sapo {
  constructor(posX, posY) {
    this.x = posX;
    this.y = posY;
    this.tamano = 50;
    this.image = sapoImage;
    this.velY = 6; 
  }

  dibujar() {
    fill(this.miColor);
    ellipse(this.x, this.y, this.tamano, this.tamano);
  }

  caer() {
    this.y += this.velY;
  }

  reset() {
    this.y = 0;
    this.x = random(width);
  }
}
