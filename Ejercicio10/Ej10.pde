Vector ab, bc, ac, ad, bd, cd;
PVector A,B,C,AA,BB,CC;
int unidadCuadricula;

void setup(){
  size(720,720);
  
  //Declarando el tamaño de la unidad en píxeles
  unidadCuadricula = 20;
  
  //Declarando los puntos
  A = new PVector(-1, -2);
  B = new PVector(4, -1);
  C = new PVector(5, 2);
  
  //Las siguientes variables sólo sirven para graficar vectores en el lienzo
  AA = new PVector(A.x, A.y);
  BB = new PVector(B.x, B.y);
  CC = new PVector(C.x, C.y);
  
  //Para representar correctamente los puntos, se invierten los valores de los componentes Y, ya que Processing toma positivo los valores en Y hacia abajo
  AA.y *= -1;
  BB.y *= -1;
  CC.y *= -1;
  
  //Para que los vectores sean visibles en el lienzo, los valores de los puntos se multiplican por unidadCuadricula
  AA.mult(unidadCuadricula);
  BB.mult(unidadCuadricula);
  CC.mult(unidadCuadricula);
  
  //Calculando los vectores
  ab = new Vector(new PVector(width/2+AA.x, height/2+AA.y), new PVector(BB.x - AA.x, BB.y - AA.y));
  ac = new Vector(ab.getOrigen(), new PVector(CC.x - AA.x, CC.y - AA.y));
  
  ad = new Vector(ab.getOrigen(), ab.sumar(ac).getDestino());
  
  bd = new Vector(PVector.add(ab.getOrigen(), ab.getDestino()), ad.restar(ab).getDestino());
  cd = new Vector(PVector.add(ac.getOrigen(), ac.getDestino()), ad.restar(ac).getDestino());
  
  
  
}
void draw(){
  background(#222229);
  
  //Dibujando la cuadricula
  dibujarEjesCartesianos();
  
  //Dibujando los vectores
  ab.display('A', #ff7777, 4);
  ac.display(#7777ff, 4, 'C');
  bd.display('B', #77ff77, 4);
  cd.display(#ffff77, 4, 'D', #55ffff);
  //ad.display(#77ffff, 2);
}

void dibujarEjesCartesianos(){    
  
  stroke(#333339);
  strokeWeight(1);
  for(int i = 0; i <= height; i += unidadCuadricula){
    line(0, i, width, i);
  }
  for(int i = 0; i <= width; i += unidadCuadricula){
    line(i, 0, i, height);
  }
  
  //Dibujando sistema de ejes cartesianos
  stroke(#444449);
  strokeWeight(2);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2,  height);  
}
