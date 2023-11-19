class Personaje {
  constructor(posX, posY) { //se inicializan las propiedades del personaje, como la posición inicial, el tamaño, y el color
    this.posX = posX;
    this.posY = posY - 50;
    this.ancho = 100;
    this.alto = 100;
    this.miColor = color(70, 54, 29);
  }

  dibujar() {
    fill(this.miColor);
    rect(this.posX, this.posY, this.ancho, this.alto);
  }

//recibe el código de tecla presionada y llama a los métodos moverIzquierda o moverDerecha según la tecla presionada
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

//verifica si hay una colisión entre el personaje y un sapo, retorna true si hay colisión, sino retorna false
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
