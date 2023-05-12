//Candelaria Villarreal 95544/8
//comisión 3
//TP 0 - Retrato

PImage imagen;
void setup(){
  imagen = loadImage ("retrato.jpg");
  size (800,400);//tamaño del lienzo
  background (126, 127, 139);//color del fondo
}
void draw(){
  image (imagen, 400, 0, 400, 400);
  line (400, 0, 400, 400);
  fill(193, 174, 119);//color del pelo
  rectMode (CENTER);
  rect (200, 400, 210, 300);//pelo
  fill (240, 224, 206);//color del cuello
  rectMode (CENTER);
  rect (200, 400, 125, 180);//forma del cuello
  fill(222, 202, 181);//color de la sombra del cuello
  rectMode (CENTER);
  rect (200, 300, 125, 40);//sombra del cuello
  fill (240, 224, 206);//color de la cara
  ellipse (200, 200, 210, 225);//forma de la cara
  fill (255);
  ellipse (150, 170, 50, 30);//ojo izquierdo
  ellipse (250, 170, 50, 30);//ojo derecho
  fill (117, 155, 170);//color del iris
  ellipse (150, 170, 30, 30);//iris izquierdo
  ellipse (250, 170, 30, 30);//iris derecho
  fill (0);//color de las pupilas
  ellipse (150, 170, 15, 15);//pupila izquierda
  ellipse (250, 170, 15, 15);//pupila derecha
  fill (255);//color del reflejo de los ojos
  ellipse (152, 168, 5, 5);//reflejo ojo izquierdo
  ellipse (252, 168, 5, 5);//reflejo ojo derecho
  fill (193, 174, 119);//color de cejas
  rectMode (CENTER);
  rect (150, 145, 50, 10);//ceja izquierda
  rectMode (CENTER);
  rect (250, 145, 50, 10);//ceja derecha
  fill (222, 202, 181);//color de fosas nasales
  ellipse (190, 220, 19, 10);//fosa nasal izquierda
  ellipse (210, 220, 19, 10);//fosa nasal derecha
  line (180, 220, 190, 180);//linea de nariz
  line (220, 220, 210, 180);//linea de nariz
  fill (214, 168, 193);//color de labios
  bezier (150, 270, 170, 250, 230, 250, 250, 270);//labio superior
  bezier (150, 270, 170, 290, 230, 290, 250, 270);//labio inferior
  line (150, 270, 250, 270);
  fill (193, 174, 119);//color del pelo
  bezier (135, 113, 100, 150, 100, 170, 80, 400);//pelo
  bezier (270, 113, 330, 250, 320, 270, 320, 400);//pelo
}
