//Trabajo práctico 3 com 3 - Villarreal Candelaria 95544/8
//LINK YOUTUBE

//variables y arreglos
int estado = 0;
int c = 17;
PImage[] pantalla = new PImage [c];
String[] historia = new String [c];
PFont fuente; 
float y;

void setup () {
  size (600, 600);
  for (int i = 0; i < c; i++) {
    pantalla[i] = loadImage ("pantalla" + i + ".png"); //carga de imagenes
  }
  
  textSize (10);
  textAlign (CENTER, CENTER);
  fuente = loadFont("ArialMT-20.vlw");
  
  //carga de textos
  historia[0] = "Tiana, una joven camarera de Nueva Orleans,\n es invitada a un baile de disfraces";
  historia[1] = "Elige ir al baile?";
  historia[2] = "Tiana va al baile y esa noche conoce a Naveen, un príncipe que fue convertido en sapo por un brujo, Él le pide que lo bese para romper el hechizo";
  historia[3] = "En lugar de asistir al baile, Tiana decide concentrarse por completo en su sueño de abrir su propio restaurante";
  historia[4] = "Un día descubre un libro antiguo en la biblioteca de su ciudad que contiene recetas secretas de la realeza";
  historia[5] = "Publica el libro?";
  historia[6] = "Fascinada por la oportunidad de compartir la historia culinaria, Tiana decide escribir su propio  y publicarlo. El libro se convierte en un éxito y Tiana se vuelve una famosa autora de libros de cocina";
  historia[7] = "En lugar de publicar el libro, Tiana elige seguir con su vida normalmente y aunque no pudo tener su propio restaurante es feliz siendo camarera";
  historia[8] = "Lo besa?";
  historia[9] = "Tiana decide no besarlo y regresa al baile con su mejor amiga Charlotte";
  historia[10] = "Tiana lo besa, pero en vez de romper el hechizo ella también se convierte en rana. Ambos se embarcan en una aventura en busca de Mama Odie, una hechizera que puede ayudarlos a revertirlo";
  historia[11] = "En el transcurso del viaje, se encuentran con Louis el cocodrilo y Ray la luciernaga, quienes podrían ayudarlos a encontrar a Mama Odie";
  historia[12] = "Aceptan su ayuda?";
  historia[13] = "Ellos no aceptan la ayuda y no pueden encontrar a la hechizera, sin embargo eligen seguir juntos y vivir felices a pesar de ser sapos";
  historia[14] = "Tiana y Naveen finalmente encuentran a Mama Odie, quien les enseña que el verdadero amor y la importancia de los deseos desinteresados son la clave para romper el hechizo";
  historia[15] = "Tiana y Naveen recuperan su forma humana, se casan y viven felices para siempre";
 }
   
 void draw () {
  textFont(fuente);
  fill(255);
  tint(150); //le baja el brillo a las imagenes
    
  switch (estado) {
   case 0:
    tint(150);
    image (pantalla [0], 0, 0 );
    textSize(20);
    text(historia[0], 250, 420);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 1:
    image (pantalla [1], 0, 0 );
    text(historia[1], 275, 290, 400, 60);
    boton (530, 400, 70);
    boton (420, 400, 70);
    textSize(30);
    fill(255);
    text("No", 530, 400);
    text("Si", 420, 400);
    break;
    
   case 2:
    image (pantalla [2], 0, 0 );
    text(historia[2], 170, 35, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 3: 
    image (pantalla [3], 0, 0 );
    text(historia[3], 220, 400, 300, 250);
    boton (120, 530, 70);
    flecha2();
    break;
    
   case 4:
    image (pantalla [4], 0, 0 );
    text(historia[4], 150, 370, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 5:
    image (pantalla [5], 0, 0 );
    text(historia[5], 100, 20, 400, 60);
    boton (350, 140, 70);
    boton (240, 140, 70);
    textSize(30);
    fill(255);
    text("No", 350, 140);
    text("Si", 240, 140);
    break;
    
   case 6:
    image (pantalla [6], 0, 0 );
    text(historia[6], 70, 350, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 7:
    image (pantalla [7], 0, 0 );
    text(historia[7], 70, 190, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 8: 
    image (pantalla [8], 0, 0 );
    text(historia[8], 100, 330, 400, 40);
    boton (240, 430, 70);
    boton (360, 430, 70);
    textSize(30);
    fill(255);
    text("No", 360, 430);
    text("Si", 240, 430);
    break;
    
   case 9:
    image (pantalla [9], 0, 0 );
    text(historia[9], 150, 300, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 10:
    image (pantalla [10], 0, 0 );
    text(historia[10], 150, 300, 300, 250);
    boton (530, 70, 70);
    flecha3();
    break;
    
   case 11:
    image (pantalla [11], 0, 0 );
    text(historia[11], 70, 190, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 12:
    image (pantalla [12], 0, 0 );
    text(historia[12], 230, 20, 400, 60);
    boton (480, 110, 70);
    boton (380, 110, 70);
    textSize(30);
    fill(255);
    text("No", 480, 110);
    text("Si", 380, 110);
    break;
    
   case 13: 
    image (pantalla [13], 0, 0 );
    text(historia[13], 60, 300, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 14: 
    image (pantalla [14], 0, 0 );
    text(historia[14], 100, 340, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   case 15: 
    image (pantalla [15], 0, 0 );
    text(historia[15], 150, 300, 300, 250);
    boton (530, 530, 70);
    flecha();
    break;
    
   //los créditos aparecen gradualmente a medida que el valor de Y aumenta, si Y supera 900 se dibuja el botón cuadrado
   case 16:
    fill(255);
    background(77,116,83);
    textSize(30);
    y = y + 2;
  text("FIN ", 300, y);
  if (y > 150) {
    text("TP3 - Villarreal Candelaria", 300, y -150);
  }
  if (y > 250) {
    text("Autor:John Musker", 300, y -250);
  }
  if (y > 300) {
    text("Programadora:Villarreal Candelaria", 300, y -300);
  }
  if (y > 350) {
    text("Libro:La princesa y el sapo", 300, y -350);
  }
  if (y > 450) {
    text("Gracias por ver, toca para reiniciar\n y buscar otro final", 300, y -450);
  }
  if ( y > 900) {
    botonCuadrado();
  }
}
}

void mousePressed () {
  
  //final uno
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(420, 400, 100)) {
    estado = 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado = 8;
  } else if (estado == 8 && zonaCircular(360, 430, 70)) {
    estado = 9;
  } else if (estado == 9 && zonaCircular(530, 530, 70)) {
    estado = 16;
  }
  
  //final dos
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(530, 400, 100)) {
    estado = 3; 
  } else if (estado == 3 && zonaCircular(120, 530, 100)) {
    estado = 4;   
  } else if (estado == 4 && zonaCircular(530, 530, 100)) {
    estado = 5;   
  } else if (estado == 5 && zonaCircular(240, 140, 100)) {
    estado = 6;  
  } else if (estado == 6 && zonaCircular(530, 530, 100)) {
    estado = 16;
  }
    
  //final tres
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(420, 30, 100)) {
    estado = 3; 
  } else if (estado == 3 && zonaCircular(120, 530, 100)) {
    estado = 4;   
  } else if (estado == 4 && zonaCircular(530, 530, 100)) {
    estado = 5;   
  } else if (estado == 5 && zonaCircular(350, 140, 100)) {
    estado = 7;  
  } else if (estado == 7 && zonaCircular(530, 530, 100)) {
    estado = 16;
  }
    
  //final cuatro
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(530, 30, 100)) {
    estado = 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado = 8;
  } else if (estado == 8 && zonaCircular(240, 430, 70)) {
    estado = 10;
  } else if (estado == 10 && zonaCircular(530, 70, 70)) {
    estado = 11;  
  } else if (estado == 11 && zonaCircular(530, 530, 70)) {
    estado = 12;   
  } else if (estado == 12 && zonaCircular(480, 110, 70)) {
    estado = 13;  
  } else if (estado == 13 && zonaCircular(530, 530, 70)) {
    estado = 16;    
  }
  
  //final cinco
  if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(530, 30, 100)) {
    estado = 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado = 8;
  } else if (estado == 8 && zonaCircular(240, 430, 70)) {
    estado = 10;
  } else if (estado == 10 && zonaCircular(530, 70, 70)) {
    estado = 11;  
  } else if (estado == 11 && zonaCircular(530, 530, 70)) {
    estado = 12;   
  } else if (estado == 12 && zonaCircular(380, 110, 70)) {
    estado = 14;
  } else if (estado == 14 && zonaCircular(530, 530, 70)) {
    estado = 15;
  } else if (estado == 15 && zonaCircular(530, 530, 70)) {
    estado = 16;
  }
  
  if (estado == 16 && zonaCircular(300, 300, 200)) {
    y = 0;
    estado = 0;
  }
}
