void draw() {
  background(0, 0, 255);
  lights();

  piuma.disegna();
  strega.disegna();
  colibri.disegna();
}
class Personaggio {
  PShape personaggio;
  float x, y;


  void disegna() {
    shape(personaggio, x, y);
    personaggio.setFill(color(#C49353));
  }
}



class  Trasfigurabile {
  PShape trasfigurabile;
  float x, y;
  float step = 5;
  void disegna() {
    shape(trasfigurabile, x, y);
    trasfigurabile.setFill(color(#22D120));
    shape(trasfigurabile, x, y);
    trasfigurabile.setFill(color(#19A3E0));



    if (x > width * 0.1) {
      x = x + step;
      if (x < width * 0.1) 
        step = 0;
    }
  }
}

