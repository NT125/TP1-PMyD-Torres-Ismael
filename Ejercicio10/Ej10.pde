Vector a, b, aa, bb, c;
PVector A,B,AA,BB,C;

void setup(){
  size(720,720);
  
  //Dibujando sistema de ejes cartesianos
  
  //Declarando los puntos
  A = new PVector(3, 5);
  B = new PVector(2, 1);
  
  //Los siguientes puntos sólo sirven para escribirlos en la información textual de los vectores en el lienzo
  AA = new PVector(A.x, A.y);
  BB = new PVector(B.x, B.y);
  C = PVector.add(A,B);
  
  //Para representar correctamente los puntos, se invierten los valores de los componentes Y, ya que Processing toma positivo los valores en Y hacia abajo
  A.y *= -1;
  B.y *= -1;
  
  //Para que sean visibles en el lienzo, los valores de los componentes de los vectores están multiplicados por 20
  a = new Vector(new PVector(width/2,height/3), A.mult(20));
  b = new Vector(a.getOrigen(), B.mult(20));
  bb = new Vector(PVector.add(a.getOrigen(), a.getDestino()), b.getDestino()); // Réplica del vector b dibujado desde el origen de a
  aa = new Vector(PVector.add(b.getOrigen(), b.getDestino()), a.getDestino()); // Réplica del vector a dibujado desde el origen de b
  c = new Vector(a.getOrigen(), a.sumar(b).getDestino()); // Vector suma de a y b
  
}
void draw(){
  background(#222229);
  
  //Dibujando los vectores
  a.display(#ff7777);
  b.display(#7777ff);
  bb.display(#444499);
  aa.display(#994444);
  c.display(#55ffff);
  
  //Escribiendo la información de los vectores
  textSize(25);
  textAlign(LEFT,TOP);
  
  fill(#efefef);
  text("VECTORES:", 75, height/2+150);
  fill(#ff7777);
  text("a = (" + AA.x + "," + AA.y + ")", 75, height/2+200);
  fill(#7777ff);
  text("b = (" + BB.x + "," + BB.y + ")", 75, height/2+230);
  fill(#55ffff);
  text("c = a + b = (" + C.x + "," + C.y + ")", 75, height/2+260);
}
