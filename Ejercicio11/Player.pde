class Player extends GameObject{  

  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Player(){}
  
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
