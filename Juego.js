LINK YOUTUBE
https://youtu.be/fv-JEqSn6uU

//define la clase
class Juego { 
//se inician las propiedades del juego
  constructor() {
    this.sapos = [];
    this.personaje = new Personaje(width / 2, 550);
    this.cantidadSapos = 1;
    this.crearSapos();
    this.puntaje = 0;
    this.ganaste = false;
    this.perdiste = false;
  }

  dibujar() {
    if (this.ganaste) {
      //pantalla de ganaste 
      background(38, 134, 30);
      textSize(32);
      fill(255);
      textAlign(CENTER, CENTER);
      text("¡Ganaste!", width / 2, height / 2);
      text("Reiniciar juego", width / 2, height / 2 + 40);
    } else if (this.perdiste) {
      //pantalla de perdiste
      background(152, 47, 35);
      textSize(32);
      fill(255);
      textAlign(CENTER, CENTER);
      text("¡Perdiste!", width / 2, height / 2);
      text("Reinciar Juego", width / 2, height / 2 + 40);
    } else {
      //juego normal
      this.personaje.dibujar();

      for (let i = 0; i < this.sapos.length; i++) {
        this.sapos[i].dibujar();
        this.sapos[i].caer();

        if (this.sapos[i].y > height) {
          //verifica la colision de los sapos con el piso
          this.sapos[i].reset();
          this.sapos[i].colisiones++;
          if (this.sapos[i].colisiones >= 3) {
            this.perdiste = true;
          }
        }

        //verifica la colision de los sapos con el personaje
        if (this.personaje.colision(this.sapos[i])) {
          this.puntaje++;
          this.sapos.splice(i, 1);
          this.sapos.push(new Sapo(random(width), 0));
        }
      }

      this.drawCharacter();
      
      //contador de puntos
      textSize(24);
      fill(255);
      textAlign(RIGHT);
      text("Puntaje: " + this.puntaje, width - 10, 30);

      //verifica si ganaste
      if (this.puntaje >= 10) {
        this.ganaste = true;
      }
    }
  }

//dibuja al personaje reemplazandolo con la imagen
  drawCharacter() {
    image(tianaImage, this.personaje.posX, this.personaje.posY, this.personaje.ancho, this.personaje.alto);
  }

  crearSapos() {
    for (let i = 0; i < this.cantidadSapos; i++) {
      this.sapos.push(new Sapo(random(width), 0));
    }
  }

  teclaPresionada(keyCode) {
    this.personaje.teclaPresionada(keyCode); //pasa el código de tecla presionada al método teclaPresionada del objeto Personaje
  }

//reinicia todas las propiedades del juego para comenzar una nueva partida
  reiniciar() {
    this.sapos = [];
    this.personaje = new Personaje(width / 2, 550);
    this.puntaje = 0;
    this.ganaste = false;
    this.perdiste = false;
    this.crearSapos();
  }
}
