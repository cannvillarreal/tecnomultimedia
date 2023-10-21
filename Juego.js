class Juego {
  constructor() {
    this.sapos = [];
    this.personaje = new Personaje(width / 2, 550);
    this.cantidadSapos = 1;
    this.crearSapos();
    this.puntaje = 0; 
  }

  dibujar() {
    this.personaje.dibujar();

    for (let i = 0; i < this.sapos.length; i++) {
      this.sapos[i].dibujar();
      this.sapos[i].caer();

      if (this.sapos[i].y > height) {
        this.sapos.splice(i, 1);
        this.sapos.push(new Sapo(random(width), 0));
      }
      
      if (this.personaje.colision(this.sapos[i])) {
        this.puntaje++; 
        this.sapos.splice(i, 1);
        this.sapos.push(new Sapo(random(width), 0));
      }
    }
    
    this.drawCharacter();
  
    textSize(24);
    fill(255);
    textAlign(RIGHT);
    text("Puntaje: " + this.puntaje, width - 10, 30);
  }

  drawCharacter() {
    image(tianaImage, this.personaje.posX, this.personaje.posY, this.personaje.ancho, this.personaje.alto);
  }

  crearSapos() {
    for (let i = 0; i < this.cantidadSapos; i++) {
      this.sapos.push(new Sapo(random(width), 0));  
    }
  }

  teclaPresionada(keyCode) {
    this.personaje.teclaPresionada(keyCode);
  }
}
