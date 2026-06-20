void dibujarPatron() {

  for (int x = -180; x <= 180; x += 20) {

    for (int y = -180; y <= 180; y += 20) {

      float px = 600 + x;
      float py = 200 + y;

      float d = dist(mouseX, mouseY, px, py);

      float tam = calcularTam(d);

      float ruido = random(-0.5, 0.5);

      if (d < 120) {
        fill(255);
      } else {
        fill(0);
      }

      noStroke();

      dibujarCirculo(x + ruido, y + ruido, tam);
    }
  }
}
