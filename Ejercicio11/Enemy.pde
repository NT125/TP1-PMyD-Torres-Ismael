class Enemy extends GameObject{
  
  private Vector vectorEnemigo, vectorEnemigoJugador;
  private color col; //temporal hasta usar sprite
  
  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Enemy(){
    this.pos = new PVector(width/2, height/2);
    this.col = #000000;
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
  }  
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Enemy(PVector pos){
    this.pos = pos;  
    this.col = #000000;
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
  }
  
  // --- GETTERS Y SETTERS ---
  public void setCol(color col){
    this.col = col;
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
    fill(this.col);
    noStroke();
    rectMode(CENTER);
    square(pos.x, pos.y, 50);
  }
  
  public void calcularVectorEnemigoJugador(GameObject player){
    this.getVectorEnemigoJugador().setOrigen(this.getPos());
    this.getVectorEnemigoJugador().setDestino(PVector.sub(player.pos, this.pos).normalize());
  }
  
  public void detectarJugador(){  
    float anguloJugadorEnemigo = degrees(acos(this.getVectorEnemigo().punto(this.vectorEnemigoJugador)));  
    
    if(anguloJugadorEnemigo > 30) this.setCol(#77ff77);
    else this.setCol(#ff7777);
    
  }
  
}
