class Vector{
  
  private PVector origen, destino;
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Vector(PVector origen, PVector destino){
    this.origen = origen;
    this.destino = destino;
  }
  
  // --- GETTERS Y SETTERS ---
  public void setOrigen(PVector origen){
    this.origen = origen;
  }
  public void setDestino(PVector destino){
    this.destino = destino;
  }
  
  public PVector getOrigen(){
    return this.origen;
  }
  public PVector getDestino(){
    return this.destino;
  }
  
  //--- MÉTODOS ---
  // Método display básico
  public void display(){
    strokeWeight(3);
    stroke(20);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    point(this.getDestino().x, this.getDestino().y);
  }
  
  // Método display con color y grosor variable
  public void display(color col, int grosor){
    strokeWeight(grosor);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
  }
  
  // Método display con color, grosor variable y marcador de punto inicial
  public void display(char punto, color col, int grosor){
    strokeWeight(grosor);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    
    strokeWeight(grosor*2);
    stroke(#ffffff);
    point(this.getOrigen().x, this.getOrigen().y);
    fill(#ffffff);
    textSize(20);
    text(punto, this.getOrigen().x, this.getOrigen().y - 15);
    
  }
  
  // Método display con color, grosor variable y marcador de punto final
  public void display(color col, int grosor, char punto){
    strokeWeight(grosor);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    
    strokeWeight(grosor*2);
    stroke(#ffffff);
    point(PVector.add(this.getOrigen(), this.getDestino()).x,
          PVector.add(this.getOrigen(), this.getDestino()).y);
    fill(#ffffff);
    textSize(20);
    text(punto, PVector.add(this.getOrigen(), this.getDestino()).x,
                PVector.add(this.getOrigen(), this.getDestino()).y - 15);
    
  }
  
  //Método display con color, grosor variable y marcador de punto final
  public void display(color col, int grosor, char punto, color colPunto){
    strokeWeight(grosor);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    
    strokeWeight(grosor*2);
    stroke(colPunto);
    point(PVector.add(this.getOrigen(), this.getDestino()).x,
          PVector.add(this.getOrigen(), this.getDestino()).y);
    fill(colPunto);
    textSize(20);
    text(punto, PVector.add(this.getOrigen(), this.getDestino()).x,
                PVector.add(this.getOrigen(), this.getDestino()).y - 15);
    
  }
  
  //Método para sumar vectores
  public Vector sumar(Vector v){
    return new Vector(this.getOrigen(), PVector.add(this.getDestino(), v.getDestino()));
  }
  
  //Método para restar vectores
  public Vector restar(Vector v){
    return new Vector(this.getOrigen(), PVector.sub(this.getDestino(), v.getDestino()));
  }
}
