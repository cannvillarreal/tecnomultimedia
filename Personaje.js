class Personaje {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.ancho = 50;
    this.alto = 50;
    this.miColor = color(70, 54, 29);
  }

  dibujar() {
    fill(this.miColor);
    rect(this.posX, this.posY, this.ancho, this.alto);
  }

  teclaPresionada(keyCode) {
    if (keyCode == LEFT_ARROW) {
      this.moverIzquierda();
    } else if (keyCode == RIGHT_ARROW) {
      this.moverDerecha();
    }
  }

  moverDerecha() {
    this.posX += 20;
  }

  moverIzquierda() {
    this.posX -= 20;
  }

  colision(sapo) {
    if (
      this.posX + this.ancho > sapo.x &&
      this.posX < sapo.x + sapo.tamano &&
      this.posY + this.alto > sapo.y &&
      this.posY < sapo.y + sapo.tamano
    ) {
      return true;
    }
    return false;
  }
}
