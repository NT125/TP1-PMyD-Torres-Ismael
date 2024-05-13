class Floor extends GameObject{
  
  private Vector vectorNormal;
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Floor(PVector pos){
    this.pos = pos;
    this.vectorNormal = new Vector(new PVector(this.getPos().x, this.getPos().y),
                                   new PVector(0,-1,0));
  }
  
  // --- GETTERS Y SETTERS ---
  public Vector getVectorNormal() { return this.vectorNormal; }
  public void setVectorNormal(Vector v) { this.vectorNormal = v; }
  
  // --- MÉTODOS ---  
  // Dibuja el piso
  public void display(){
     stroke(#ffdd99);
     strokeWeight(10);
     line(0,this.getPos().y,width,this.getPos().y);
  }
}
