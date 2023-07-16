//Trabajo práctico 3 com 3 - Villarreal Candelaria 95544/8

int estado = 0;
int c = 15;
PImage[] pantalla = new PImage [c];

boolean zonaCircular(int x, int y, int r){
  return dist(mouseX,mouseY, x, y) <= r;
}

void setup () {
  size (600, 600); 
  for (int i = 0; i < c; i++) {
    pantalla[i] = loadImage ("pantalla" + i + ".png");
}
  textSize (25);
  textAlign (CENTER, CENTER);
}

void draw () {
  switch (estado) {
    
    case 0:
    image (pantalla[0],0,0);
    text ("Tiana, una joven camarera de Nueva Orleans, es invitada a un baile de disfraces", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 1:
    image (pantalla[1],0,0);
    text ("Elige ir al baile?", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 2:
    image (pantalla[2],0,0);
    text ("Tiana va al baile y esa noche conoce a Naveen, un príncipe que fue convertido en sapo por un brujo, Él le pide que lo bese para romper el hechizo", 200, 230);
    boton (530, 530, 100);
    break;
 
    case 3:
    image (pantalla[3],0,0);
    text ("En lugar de asistir al baile, Tiana decide concentrarse por completo en su sueño de abrir su propio restaurante", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 4:
    image (pantalla[4],0,0);
    text ("Un día descubre un libro antiguo en la biblioteca de su ciudad que contiene recetas secretas de la realeza", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 5:
    image (pantalla[5],0,0);
    text ("Publica el libro?", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 6:
    image (pantalla[6],0,0);
    text ("Fascinada por la oportunidad de compartir la historia culinaria, Tiana decide escribir su propio libro de cocina y publicarlo. El libro se convierte en un éxito mundial y Tiana se vuelve una famosa autora de libros de cocina", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 7:
    image (pantalla[7],0,0);
    text ("En lugar de publicar el libro, Tiana elige seguir con su vida normalmente y aunque no pudo tener su propio restaurante es feliz siendo camarera", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 8:
    image (pantalla[8],0,0);
    text ("Lo besa?", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 9:
    image (pantalla[9],0,0);
    text ("Tiana decide no besarlo y regresa al baile con su mejor amiga Charlotte", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 10:
    image (pantalla[10],0,0);
    text ("Tiana lo besa, pero en vez de romper el hechizo ella también se convierte en rana. Ambos se embarcan en una aventura en busca de Mama Odie, una hechizera que puede ayudarlos a revertirlo", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 11:
    image (pantalla[11],0,0);
    text ("En el transcurso del viaje, se encuentran con Louis el cocodrilo y Ray la luciernaga, quienes podrían ayudarlos a encontrar a Mama Odie", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 12:
    image (pantalla[12],0,0);
    text ("Aceptan su ayuda?", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 13:
    image (pantalla[13],0,0);
    text ("Ellos no aceptan la ayuda y no pueden encontrar a la hechizera, sin embargo eligen seguir juntos y vivir felices a pesar de ser sapos", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 14:
    image (pantalla[14],0,0);
    text ("Tiana y Naveen finalmente encuentran a Mama Odie, quien les enseña que el verdadero amor y la importancia de los deseos desinteresados son la clave para romper el hechizo", 200, 230);
    boton (530, 530, 100);
    break;
    
    case 15:
    image (pantalla[15],0,0);
    text ("Tiana y Naveen recuperan su forma humana, se casan y viven felices para siempre", 200, 230);
    boton (530, 530, 100);
    break;
  }
}

void mousePressed () {
   if (estado == 0 && zonaCircular(530, 530, 100)) {
    estado = 1;
  } else if (estado == 1 && zonaCircular(530, 530, 100)) {
    estado = 2;
  } else if (estado == 1 && !zonaCircular(530, 530, 100)) {
    estado = 3;
  }
}

 void boton(int x, int y, int d){
  noStroke();
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(0,40,0);
  } else {
    fill(0,80,0);
  }
  circle(x,y,d);
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(0,130,0);
  } else {
    fill(0,170,0);
  }
  
}
