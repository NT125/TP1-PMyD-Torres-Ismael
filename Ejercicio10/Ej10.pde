Vector a, b, aa, bb, c;
PVector A,B,AA,BB,C;
int unidadCuadricula;

void setup(){
  size(720,720);
  
  //Declarando el tamaño de la unidad en píxeles
  unidadCuadricula = 20;
  
  //Declarando los puntos
  A = new PVector(-1, -2);
  B = new PVector(4, -1);
  
  //Los siguientes puntos sólo sirven para escribirlos en la información textual de los vectores en el lienzo
  AA = new PVector(A.x, A.y);
  BB = new PVector(B.x, B.y);
  C = PVector.add(A,B);
  
  //Para representar correctamente los puntos, se invierten los valores de los componentes Y, ya que Processing toma positivo los valores en Y hacia abajo
  A.y *= -1;
  B.y *= -1;
  
  //Para que sean visibles en el lienzo, los valores de los componentes de los vectores están multiplicados por unidadCuadricula
  a = new Vector(new PVector(width/2,height/3), A.mult(unidadCuadricula));
  b = new Vector(a.getOrigen(), B.mult(unidadCuadricula));
  bb = new Vector(PVector.add(a.getOrigen(), a.getDestino()), b.getDestino()); // Réplica del vector b dibujado desde el origen de a
  aa = new Vector(PVector.add(b.getOrigen(), b.getDestino()), a.getDestino()); // Réplica del vector a dibujado desde el origen de b
  c = new Vector(a.getOrigen(), a.sumar(b).getDestino()); // Vector suma de a y b
  
}
void draw(){
  background(#222229);
  
  //Dibujando el fondo del texto
  fill(#1d1d22);
  noStroke();
  rect(0,height/2+100, width, height);
  
  //Dibujando la cuadricula
  dibujarEjesCartesianos();
  
  //Dibujando los vectores
  a.display(#ff7777);
  b.display(#7777ff);
  bb.display(#444499);
  aa.display(#994444);
  c.display(#55ffff);
  
  //Escribiendo la información de los vectores
  textSize(25);
  textAlign(CENTER,TOP);
  
  fill(#efefef);
  text("VECTORES:", width/2, height/2+150);
  fill(#ff7777);
  text("a = (" + AA.x + "," + AA.y + ")", width/2, height/2+200);
  fill(#7777ff);
  text("b = (" + BB.x + "," + BB.y + ")", width/2, height/2+230);
  fill(#55ffff);
  text("c = a + b = (" + C.x + "," + C.y + ")", width/2, height/2+260);
}

void dibujarEjesCartesianos(){  
  
  /*
  //Dibujo de cuadrícula (no usar, sólo se dibuja correctamente si unidadCuadricula es un valor múltiplo del ancho y alto de la ventana)
  stroke(#333339);
  strokeWeight(1);
  for(int i = 0; i <= height/2+100; i += unidadCuadricula){
    line(0, i, width, i);
  }
  for(int i = 0; i <= width; i += unidadCuadricula){
    line(i, 0, i, height/2+100);
  }
  line(0,height/2+100,width,height/2+100);
  */
  
  //Dibujando sistema de ejes cartesianos
  stroke(#444449);
  strokeWeight(2);
  line(0, height/3, width, height/3);
  line(width/2, 0, width/2,  height/2+100);
  
}
