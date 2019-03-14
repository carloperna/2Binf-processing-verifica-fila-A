Hermione strega;

class Hermione {
  PShape strega;
  Hermione(String filename) {
    strega = loadShape(filename);
    strega.setFill(color(#8E4E00));
  }

  void disegna(float x, float y) {
    shape(strega, x, y);
  }
}

Trasfigurabile foglia;

class Trasfigurabile {
  PShape foglia;

  Trasfigurabile(String filename) {
    foglia = loadShape(filename);
    foglia.setFill(color(#0496C9));
  }

  void disegna(float x, float y) {
    shape(foglia, x, y);
  }
}


//PShape Hermione;
int xfoglia = 1;
int yfoglia = 150;
void setup() {
  fullScreen(P3D); 

  foglia = new Trasfigurabile("quill.obj");

  xfoglia = int(width*0.9);

  strega = new Hermione("witch.obj");
}

void draw() {
  background(#00BDFF); 

  lights();
  shape(strega.strega, width*0.1, height*0.5);

  foglia.disegna( xfoglia, height*0.5);

  if (xfoglia > width*0.2) {
    xfoglia = xfoglia - 6;
  }
}
