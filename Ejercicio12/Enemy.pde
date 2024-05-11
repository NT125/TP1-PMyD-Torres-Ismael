class Enemy extends GameObject{
  
  private Vector vectorEnemigo, vectorEnemigoJugador;
  
  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Enemy(){
    this.pos = new PVector(width/2, height/2);
    this.sprite = loadImage("enemyTank.png");
  }  
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Enemy(PVector pos){
    this.pos = pos;  
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
    this.sprite = loadImage("enemyTank.png");
  }
  
  public Vector getVectorEnemigo(){
    return this.vectorEnemigo;
  }
  
  public void setVectorEnemigo(Vector vectorEnemigo){
    this.vectorEnemigo = vectorEnemigo;
  }
  
  public Vector getVectorEnemigoJugador(){
    return this.vectorEnemigoJugador;
  }  
  
  public void setVectorEnemigoJugador(Vector vectorEnemigoJugador){
    this.vectorEnemigoJugador = vectorEnemigoJugador;
  }
  
  // --- MÉTODOS ---
  // Método para dibujar al enemigo
  public void display(){
    imageMode(CENTER);
    image(this.sprite, this.pos.x, this.pos.y, 80, 80);
  }
  
  // Método para obtener el vector entre el enemigo y el jugador
  public void calcularVectorEnemigoJugador(GameObject player){
    this.getVectorEnemigoJugador().setOrigen(this.getPos());
    this.getVectorEnemigoJugador().setDestino(PVector.sub(player.pos, this.pos).normalize());
  }
}
