//Candelaria Villarreal - tp1 comisión 3

PImage imagen, imagen2, imagen3, imagen4, imagen5;
PFont miFont;
int contador;
int estado;
float textTamaño, textMovX, textMovY, textMovY2, textMovX3, grande;
int segundos;

void setup (){
  size (640, 480); 
  imagen = loadImage("van gogh 1.jpg"); 
  imagen2 = loadImage("van gogh 2.jpg"); 
  imagen3 = loadImage("foto 3.jpg"); 
  imagen4 = loadImage("foto 4.jpg");
  imagen5 = loadImage("foto 5.jpg"); 
  miFont = loadFont ("SitkaText-48.vlw");
  textAlign (CENTER, CENTER);
  estado = 0;
  textMovX = 0;
  textMovY = 0;
  textMovY2 = 0;
  textMovX3 = 0;
  grande = 0;
  segundos = 7000;
}
  void draw (){
    textFont (miFont);
    int diferenciaTemporal = millis () - contador;
    if (estado == 0){
     textMovY = textMovY+1; 
     if (textMovY>=200){
      textMovY=200;
}
    image (imagen, 0, 0, 640, 480);
    fill (255);
    textSize (40);
    text ("Meet Vicent Van Gogh\n una experiencia inmersiva", 310, textMovY);
    if (diferenciaTemporal>=segundos){
     estado = 1;
     contador = millis ();
     textMovY = 0;
    }
    }else if (estado == 1){
     textMovX = textMovX+1.50;
     if (textMovX>=320){
      textMovX=320;
    }
    image (imagen2, 0, 0, 640, 480);
    fill (255);
    textSize (20);
    text ("una experiencia tridimensional dividida\n en seis escenarios que te ubican en distintos hitos de\n la vida de uno de los pintores más famosos\n de la historia y te permiten tomar contacto con su historia,\n sus obras y su vida desde un punto de vista único", textMovX, 120); 
    if (diferenciaTemporal>=segundos){
     estado = 2;
     contador = millis ();
     textMovX = 0;
    }
    }else if (estado == 2){
     grande = grande+1;
     if (grande>=25){
      grande=25;
    }
    image (imagen3, 0, 0, 640, 480);
    fill (255);
    textSize (grande);
    textAlign (CENTER, CENTER);
    text ("a diferencia de otras muestras similares,\n el visitante podrá tocar con sus propias manos\n las reproducciones de las obras de arte originales\n y el trazo de las pinceladas", width/2, 235);
    if (diferenciaTemporal>=segundos){
     estado = 3;
     contador = millis ();
     grande = 0;
    }
    }
    else if (estado == 3){
     textMovY2 = textMovY2+1.50;
     if (textMovY2>=width/2){
      textMovY2=width/2;
    }
    image (imagen4, 0, 0, 640, 480);
    fill (255);
    textSize (20);
    text ("también se pueden encontrar proyecciones\n a escala real, fotografías, fragmentos de vídeo\n decorados teatrales, fragmentos audiovisuales y citas\n extraídas de más de 800 cartas", textMovY2, 400);
    textAlign (CENTER, CENTER);
    if (diferenciaTemporal>=segundos){
     estado = 4;
     contador = millis ();
     textMovY2 = 0;
    }
    }
    else if (estado == 4){
     textMovX3 = textMovX3+1.50;
     if (textMovX3>=320){
      textMovX3=320;
    }
    image (imagen5, 0, 0, 640, 480);
    fill (255);
    text ("gracias por ver", textMovX3, 300);
    textSize (20);
    text ("toca el botón para reiniciar", 330, 440);
    fill (173, 157, 66);
    circle (330, 400, 50);
    if (mousePressed){
     if (dist(330, 400, mouseX, mouseY)<50/2)
    {
    fill (173, 157, 66);
    circle (330, 400, 50);
    if (diferenciaTemporal>segundos){
     estado = 0;
     contador = millis ();
     textMovX3 = 0;
    }
    }
    }
    }
    println (millis()+"-"+contador+"="+diferenciaTemporal);
}
 
