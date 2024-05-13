Ball pelota;
Floor piso;


void setup(){
  size(1280,600);  
  pelota = new Ball(new PVector(0, height/2), new PVector(4,2));
  piso = new Floor(new PVector(0,height));
}

void draw(){
  background(#222229);
  
  pelota.display();
  pelota.move();
  
  piso.display();
  
  if (pelota.getPos().y >= height){
    pelota.rebotar(piso);
  }
  
}

void keyPressed(){
  if (key == ' '){
    pelota.setPos(new PVector(0,height/2));
    pelota.setDireccion(new PVector(4,2).normalize());
  }
}
