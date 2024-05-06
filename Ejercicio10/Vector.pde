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
  // Método display
  public void display(){
    strokeWeight(3);
    stroke(20);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    strokeWeight(9);
    stroke(#ffffff);
    point(this.getDestino().x, this.getDestino().y);
  }
  
  // Método display con color
  public void display(color col){
    strokeWeight(3);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getOrigen().x+this.getDestino().x,
         this.getOrigen().y+this.getDestino().y);
    strokeWeight(9);
    stroke(#ffffff);
    point(PVector.add(this.getOrigen(), this.getDestino()).x,
          PVector.add(this.getOrigen(), this.getDestino()).y);
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
