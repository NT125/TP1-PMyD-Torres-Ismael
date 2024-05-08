class Player extends GameObject{  

  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Player(){
    this.pos = new PVector(0,0);
  }
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Player(PVector pos){
    this.pos = pos;
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    fill(#efeaff);
    noStroke();
    circle(this.pos.x, this.pos.y, 20);
  }

}
