boolean zonaCircular (int x, int y, int r) {
  return dist (mouseX, mouseY, x, y) <= r ;
}

void boton (int x, int y, int d) {
  if (dist(mouseX, mouseY, x, y) <= d) {
    fill (77,116,83);
  } else {
    fill(67,116,80);
  }
  circle (x, y, d);
}

void botonCuadrado() {
  textSize(40);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(77,116,83);
  } else {
    fill(88, 42, 3);
  }
  rect(210, 270, 180, 50);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(150);
  } else {
    fill(200);
  }
  textSize(26);
  fill(255);
  text("REINICIAR", 300, 295);
}

void flecha() {
  fill (142, 88, 44);
  strokeWeight(5);
  stroke(0,200,0);
  line(520, 510, 545, 530);
  line(520, 550, 545, 530);
}

void flecha2() {
  fill (142, 88, 44);
  strokeWeight(5);
  stroke(0,200,0);
  line(110, 510, 135, 530);
  line(110, 550, 135, 530);
}

void flecha3() {
  fill (142, 88, 44);
  strokeWeight(5);
  stroke(0,200,0);
  line(520, 50, 545, 70);
  line(520, 90, 545, 70);
}
