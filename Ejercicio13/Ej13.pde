Ball pelota;
Floor piso;

int diapo;

void setup(){
  size(1280,600);  
  
  pelota = new Ball(new PVector(0, height/2), new PVector(4,2));
  piso = new Floor(new PVector(0,height-20));
  
  diapo = 0;
}

void draw(){
  background(#222229);
  
  dibujarDiapositiva(diapo);
  
  if (diapo < 1 || diapo > 2){  
    pelota.display();
    pelota.move();
    piso.display();
  }  
  
  if (pelota.getPos().y >= piso.getPos().y - pelota.getRadio()){
    pelota.rebotar(piso);
  }
  
}

void dibujarDiapositiva(int diapo){
  switch(diapo){
    case 0:
      textAlign(CENTER, CENTER);
      fill(#eeeeef);
      textSize(50);
      text("REFLEXIÓN DE VECTORES Y PRODUCTO PUNTO", width/2, height/2-25);
      textSize(32);
      text("APLICACIÓN EN DESARROLLO DE VIDEOJUEGOS", width/2, height/2+16);
      textSize(18);
      text("Haga clic para iniciar la presentación", width/2, height/2+120);
      break;
    
    case 1:
      textAlign(CENTER, CENTER);
      textSize(30);
      fill(#eeeeef);
      text("Cuando desarrollamos videojuegos, vamos a hacer", width/2, height/2-180);
      text("rebotar objetos en muchísimas ocasiones", width/2, height/2-140);
      text("(un objeto rebotando con una pared, o el piso,", width/2, height/2-100);
      text("o quizás balas que reboten con un obstáculo, etc.)", width/2, height/2-60);
      
      fill(#ffff99);
      text("A la hora de recrear estos movimientos físicos", width/2, height/2+60);
      text("tendremos que hacer uso de vectores,", width/2, height/2+100);
      text("y para realizar los cálculos correctos de la", width/2, height/2+140);
      text("trayectoria del objeto, se usa el producto punto.", width/2, height/2+180);
      break;
    
    case 2:
      textAlign(CENTER, CENTER);
      textSize(30);
      fill(#eeeeef);
      text("Usando vectores, nuestro trabajo como desarrollador", width/2, height/2-180);
      text("de videojuegos es aplicar el concepto de", width/2, height/2-140);
      text("reflexión (de la geometría vectorial), donde se describe", width/2, height/2-100);
      text("cómo cambia la dirección de un vector cuando éste", width/2, height/2-60);
      text("se refleja en una superficie, usando el vector", width/2, height/2-20);
      text("de dicha superficie.", width/2, height/2+20);
      
      fill(#ffff99);
      text("La fórmula para calcular dicha reflexión es: v-2(v.n)n", width/2, height/2+140);
      text("donde v es el vector a reflejar y n la normal de la superficie reflectante.", width/2, height/2+180);
      break;
      
    case 3:
      textAlign(CENTER, CENTER);
      textSize(30);
      fill(#eeeeef);
      text("Podemos aplicar este cálculo en una pelota que se mueve en dirección (4,-3),", width/2, 30);
      text("cuando choca con el suelo, se aplica la fórmula de reflexión en su dirección", width/2, 60);
      text("y sale reflejado en dirección contraria respecto a la superficie.", width/2, 90);
      
      fill(#ffff99);
      textSize(20);
      text("Pulse ESPACIO para lanzar la pelota y observar la reflexión", width/2, 150);
      text("o haga clic para volver al título.", width/2, 170);
      break;
      
  }
  
  if(diapo > 0 && diapo < 3) {
    textAlign(RIGHT,CENTER);
    textSize(25);
    fill(#eeeeef);
    text("Click:   Avanzar →", width-20, height-20);
  }
}

void keyPressed(){
  if (key == ' '){
    pelota.setPos(new PVector(0,height/2));
    pelota.setDireccion(new PVector(4,2).normalize());
  }
}

void mousePressed(){
  if (diapo < 3){
    diapo++;
  } else {
    diapo = 0;
  }
}
