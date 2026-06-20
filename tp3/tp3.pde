https://youtu.be/wHQGhvPpP-Y
PImage imagenObra;

float intensidad;
float rotacion;

void setup() {
  size(800, 400);

  imagenObra = loadImage("09.jpg");

  reiniciar();
}

void draw() {
  background(255);

  image(imagenObra, 0, 0, 400, 400);

  pushMatrix();
  translate(600, 200);
  rotate(rotacion);

  dibujarPatron();

  popMatrix();
}

void mousePressed() {
  intensidad += 2;

  if (intensidad > 40) {
    intensidad = 40;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
}
