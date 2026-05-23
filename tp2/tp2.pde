PImage naruto1;
PImage naruto2;
PImage naruto3;
PImage naruto4;
PImage naruto5;

int pantalla = -1;

int contador = 0;

float opacidad = 255;
float velocidad = 0.4;

// estrellas
float estrellaX1 = 100;
float estrellaY1 = 80;

float estrellaX2 = 300;
float estrellaY2 = 150;

float estrellaX3 = 500;
float estrellaY3 = 60;

float estrellaX4 = 200;
float estrellaY4 = 300;

float estrellaX5 = 420;
float estrellaY5 = 250;

float estrellaX6 = 580;
float estrellaY6 = 120;

float estrellaX7 = 50;
float estrellaY7 = 200;

float estrellaX8 = 350;
float estrellaY8 = 400;

void setup() {

  size(640, 480);

  // imagenes
  naruto1 = loadImage("naruto1.jpg");
  naruto2 = loadImage("naruto2.jpg");
  naruto3 = loadImage("naruto3.jpg");
  naruto4 = loadImage("naruto4.jpg");
  naruto5 = loadImage("naruto5.jpg");
}

void draw() {

  contador++;

  // cambio de escenas
  if (contador > 600 && pantalla >= 0 && pantalla < 5) {

    pantalla++;

    contador = 0;

    opacidad = 255;
  }

  // pantalla inicial
  if (pantalla == -1) {

    pantallaInicio();
  }

  // escena 1
  else if (pantalla == 0) {

    mostrarEscena(
      naruto1,
      "Naruto creció solo y era rechazado por la aldea",
      120, 170, 255
      );
  }

  // escena 2
  else if (pantalla == 1) {

    mostrarEscena(
      naruto2,
      "A pesar de todo, nunca abandonó su sueño",
      255, 180, 100
      );
  }

  // escena 3
  else if (pantalla == 2) {

    mostrarEscena(
      naruto3,
      "Junto al equipo 7 encontró grandes amistades",
      180, 220, 255
      );
  }

  // escena 4
  else if (pantalla == 3) {

    mostrarEscena(
      naruto4,
      "Tuvo que enfrentar grandes enemigos para proteger a los suyos",
      80, 80, 100
      );
  }

  // escena 5
  else if (pantalla == 4) {

    mostrarEscena(
      naruto5,
      "Después de muchos años, Naruto finalmente se convirtió en Hokage",
      255, 180, 100
      );
  }

  // pantalla final
  else if (pantalla == 5) {

    pantallaFinal();
  }
}

// PANTALLA INICIO
void pantallaInicio() {

  background(20, 20, 50);

  moverEstrellas();

  fill(255);

  textAlign(CENTER);

  textSize(42);

  text(" LA HISTORIA DE NARUTO", width/2, 150);

  // mouse sobre boton
  if (mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 260 &&
    mouseY < 320) {

    fill(255, 170, 0);

  } else {

    fill(255, 120, 0);
  }

  // boton
  rect(220, 260, 200, 60, 15);

  // texto boton
  fill(255);

  textSize(24);

  text("INICIO", width/2, 300);
}

// FUNCION ESCENAS
void mostrarEscena(PImage foto,
  String texto,
  int r,
  int g,
  int b) {

  background(r, g, b);

  moverEstrellas();

  // difuminar
  tint(255, opacidad);

  // marco imagen
  fill(255, 80);

  rect(60, 30, 520, 340, 20);

  // imagen
  image(foto, 70, 40, 500, 320);

  // fondo texto
  noStroke();

  fill(0, 150);

  rect(0, 380, width, 100);

  // texto
  fill(255);

  textAlign(CENTER);

  textSize(22);

  text(texto, width/2, 420);

  // difuminar al inicio
  if (contador < 60 && opacidad > 0) {

    opacidad -= velocidad;
  }
}

// ESTRELLAS
void moverEstrellas() {

  fill(255);

  ellipse(estrellaX1, estrellaY1, 4, 4);
  ellipse(estrellaX2, estrellaY2, 6, 6);
  ellipse(estrellaX3, estrellaY3, 5, 5);
  ellipse(estrellaX4, estrellaY4, 4, 4);
  ellipse(estrellaX5, estrellaY5, 6, 6);
  ellipse(estrellaX6, estrellaY6, 5, 5);
  ellipse(estrellaX7, estrellaY7, 4, 4);
  ellipse(estrellaX8, estrellaY8, 6, 6);

  estrellaY1 += 0.3;
  estrellaY2 += 0.5;
  estrellaY3 += 0.2;
  estrellaY4 += 0.4;
  estrellaY5 += 0.3;
  estrellaY6 += 0.5;
  estrellaY7 += 0.2;
  estrellaY8 += 0.4;

  if (estrellaY1 > height) {
    estrellaY1 = 0;
  }

  if (estrellaY2 > height) {
    estrellaY2 = 0;
  }

  if (estrellaY3 > height) {
    estrellaY3 = 0;
  }

  if (estrellaY4 > height) {
    estrellaY4 = 0;
  }

  if (estrellaY5 > height) {
    estrellaY5 = 0;
  }

  if (estrellaY6 > height) {
    estrellaY6 = 0;
  }

  if (estrellaY7 > height) {
    estrellaY7 = 0;
  }

  if (estrellaY8 > height) {
    estrellaY8 = 0;
  }
}

// PANTALLA FINAL
void pantallaFinal() {

  background(30, 30, 50);

  moverEstrellas();

  fill(255);

  textAlign(CENTER);

  textSize(40);

  text("FIN", width/2, 180);

  // mouse sobre boton
  if (mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 260 &&
    mouseY < 320) {

    fill(255, 170, 0);

  } else {

    fill(255, 120, 0);
  }

  // boton reinicio
  rect(220, 260, 200, 60, 15);

  fill(255);

  textSize(24);

  text("REINICIAR", width/2, 300);
}

// CLICK DEL MOUSE
void mousePressed() {

  // iniciar historia
  if (pantalla == -1 &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 260 &&
    mouseY < 320) {

    pantalla = 0;

    contador = 0;

    opacidad = 255;
  }

  // reiniciar historia
  else if (pantalla == 5 &&
    mouseX > 220 &&
    mouseX < 420 &&
    mouseY > 260 &&
    mouseY < 320) {

    pantalla = -1;

    contador = 0;

    opacidad = 255;
  }
}
