class Enemy extends GameObject{
  
  private Vector vectorEnemigo, vectorEnemigoJugador;
  private boolean jugadorDetectado;
  
  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Enemy(){
    this.pos = new PVector(width/3, height/2);
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
    this.jugadorDetectado = false;
    this.sprite = loadImage("enemySG.png");
  }  
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Enemy(PVector pos){
    this.pos = pos;  
    this.vectorEnemigo = new Vector(this.pos, new PVector(1,0));
    this.vectorEnemigoJugador = new Vector();
    this.jugadorDetectado = false;
    this.sprite = loadImage("enemySG.png");
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
  
  // Método para disparar un proyectil hacia el jugador
  public void disparar(GameObject objetivo, Fireball bala){
    PVector direccion = PVector.sub(objetivo.getPos(), this.getPos()).normalize();
    bala.display();
    bala.move(direccion);
  }
  
  // Método para detectar al jugador
  public void detectarJugador(){  
    float anguloJugadorEnemigo = degrees(acos(this.getVectorEnemigo().punto(this.vectorEnemigoJugador)));  
    
    if(anguloJugadorEnemigo < 30) this.jugadorDetectado = true;
    else this.jugadorDetectado = false;
  }
  
}
