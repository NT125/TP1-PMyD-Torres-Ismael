class Enemy extends GameObject{
  
  private Vector vectorEnemigo, vectorEnemigoJugador;
  
  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Enemy(){}
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Enemy(PVector pos){
    this.pos = pos;  
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
  }
  
  // --- MÉTODOS ---
  // Método para dibujar al enemigo
  public void display(){
    fill(#ff4499);
    noStroke();
    rectMode(CENTER);
    square(pos.x, pos.y, 50);
  }
  
  public void calcularVectorEnemigoJugador(GameObject player){
    this.vectorEnemigoJugador.setOrigen(this.getPos());
    this.vectorEnemigoJugador.setDestino(PVector.sub(player.pos, this.pos).normalize());
  }
  
}
