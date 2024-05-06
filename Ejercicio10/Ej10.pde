Vector a, b, c, d, e;

void setup(){
  size(720,720);
  
  //Para que sean visibles en el lienzo, los valores de los componentes de los vectores están multiplicados por 100
  a = new Vector(new PVector(width/3.25,height/1.75), new PVector(-100,-200));
  b = new Vector(a.getOrigen(), new PVector(400,-100));
  c = new Vector(PVector.add(a.getOrigen(), a.getDestino()), b.getDestino()); // Réplica del vector b dibujado desde el origen de a
  d = new Vector(PVector.add(b.getOrigen(), b.getDestino()), a.getDestino()); // Réplica del vector a dibujado desde el origen de b
  e = new Vector(a.getOrigen(), a.sumar(b).getDestino()); // Vector suma de a y b
  
}
void draw(){
  background(#222229);
  a.display(#ff7777);
  b.display(#7777ff);
  c.display(#ffff55);
  d.display(#77ff77);
  e.display(#55ffff);
}
