Personaggio strega;
Trasfigurabile piuma;
Trasfigurabile colibri;

void setup() {
  fullScreen(P3D);

  strega = new Personaggio();
  piuma = new Trasfigurabile();
  colibri = new Trasfigurabile();
  strega.personaggio  = loadShape("witch.obj");
  strega.personaggio.rotateX(radians(180));
  strega.x = width * 0.1;
  strega.y = height * 0.5;  

  piuma.trasfigurabile = loadShape("quill.obj");
  piuma.x = width * 0.9;
  piuma.y = height * 0.5;

  colibri.trasfigurabile = loadShape("colibri.obj");

  colibri.x = width * 0.1;
  colibri.y = height * 0.6;
}

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



    if (x < width * 0.1) {
      x = x + step;
      if (y > width * 0.9) 
        step = 0;
    }
  }
}
