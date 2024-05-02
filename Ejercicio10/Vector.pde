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
         this.getDestino().x,
         this.getDestino().y);
  }
  
  // Método display con color
  public void display(color col){
    strokeWeight(3);
    stroke(col);
    line(this.getOrigen().x,
         this.getOrigen().y,
         this.getDestino().x,
         this.getDestino().y);
  }
}
