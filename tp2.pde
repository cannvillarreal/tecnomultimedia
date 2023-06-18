//Villarreal Candelaria 95544/8 Com 3 - TP2

//declaración de variables
float distancia;
PImage imagen; 
color colorCirculo;

void setup() {
  size (800, 400);
  imagen = loadImage ("circulos.jpg");
  noStroke ();
  distancia = dist (0, 0, width, height); //calcula la distancia entre el punto (0,0) y el ancho y alto de la ventana 
  colorCirculo = color (255); //establece el color inicial de los círculos como blanco
}
void draw () {
  background (0);
  image (imagen, 0, 0, 400, 400);
  pushMatrix (); 
  translate (400, 0); //traslada el origen de coordenadas a (400, 0)
  for (int i = 0; i <= width; i += 20) { //bucle que itera horizontalmente de 0 a width con un incremento de 20
    for (int c = 0; c <= height; c += 20) { // bucle anidado que itera verticalmente de 0 a height con un incremento de 20
      float size = dist(mouseX, mouseY, i, c); //calcula la distancia entre la posición del mouse y la posición actual del círculo
      size = size/distancia * 66; //escala el tamaño en función de la distancia calculada y lo limita a un máximo de 66
      fill (colorCirculo); //establece el color de relleno de los círculos
      ellipse (i, c, size, size); //dibuja un círculo en la posición (i, c) con el tamaño calculado
    }
  }
  popMatrix();
}
 //si se presiona la tecla espacio establece el color de los circulos como azul, de lo contrario establece el color como verde
void keyPressed() {
  if (key == ' ') {
    colorCirculo = color (30, 64, 155);
    } else {
    colorCirculo = color (46, 126, 111);
  }
 //si se presiona la tecla "c" restablece las variables a sus valores iniciales
  if (key == 'c') {
    resetVariables ();
  }
}
void resetVariables (){
   colorCirculo= color (255);
}
