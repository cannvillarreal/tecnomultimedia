//hace que los charlys empiecen a caer
function charlysQueCaen() {
  for (let i = 0; i < numCharlys; i++) {
    charlyX[i] = random(width); //posición aleatoria de charly en X
    charlyY[i] = random(-400, -50); //posición Y inicial arriba de la pantalla
    charlySpeed[i] = 5; //velocidad 
    charlyDiameter[i] = 50;
  }
}

//iniciar el juego
function checkMouseClick() {
  if (estado == 0 && zonaRect(300, 350, 100, 50)) {
    estado = 1;
  }
}

//verifica si el mouse está dentro del rectángulo para iniciar
function zonaRect(x, y, w, h) {
  return mouseX > x - w / 2 && mouseX < x + w / 2 && mouseY > y - h / 2 && mouseY < y + h / 2;
}

function mouseClicked() {
  checkMouseClick();
}

//dibuja el personaje
function personaje() {
  fill(214, 204, 153);
  ellipse(personajeX, personajeY, 40, 40);
  //calcula las coordenadas para centrar la imagen en la elipse
  let x = personajeX - imagenes[0].width / 2;
  let y = personajeY - imagenes[0].height / 2;
  image(imagenes[0], x + 750, y + 750, 100, 100); //muestra la imagen del personaje centrada en la elipse
}

//muestra el puntaje
function puntos() {
  textSize(20);
  fill(255);
  text("Puntaje: " + puntaje, 55, 30);
  //cuando el contador llega a 10 ganas
  if (puntaje >= 10) {
    estado = 3;
  }
}

//cuando charly colisiona con el suelo, pierdes
function perder() {
  if (charlyY[0] + charlyDiameter[0] / 2 > height - 30) {
    estado = 2;
  }
}

//dibuja los charlys
function dibujarCharlys() {
  for (let i = 0; i < numCharlys; i++) {
    charlyY[i] += charlySpeed[i];
    fill(255);
    ellipse(charlyX[i], charlyY[i], 54);
    //calcula las coordenadas para centrar la imagen en la elipse
    let x = charlyX - imagenes[1].width / 2;
    let y = charlyY - imagenes[1].height / 2;
    image(imagenes[1], x + 385, y + 382, 60, 60); //muestra la imagen del personaje centrada en la elipse
    if (charlyY[i] > height + 50) {
      //reiniciar en la parte superior
      charlyY[i] = random(-400, -50);
      charlyX[i] = random(width);
    }
    //cuando charly toca la pileta, aumenta el puntaje
    if (dist(charlyX[i], charlyY[i], personajeX, personajeY) < (charlyDiameter[i] + 65) / 2) {
      puntaje++;
      //resetea charly cuando toca la pileta
      charlyY[i] = random(-400, -50);
      charlyX[i] = random(width);
    }
  }
}
