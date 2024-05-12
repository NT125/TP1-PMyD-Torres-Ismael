class Player extends GameObject{  
  
  private boolean isDetected;
  private Vector vectorJugador, vectorJugadorEnemigo;

  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Player(){
    this.pos = new PVector(mouseX,mouseY);
    this.isDetected = false;
    this.vectorJugador = new Vector(this.pos, new PVector(0,-1,0));
    this.vectorJugadorEnemigo = new Vector();
    this.sprite = loadImage("tank.png");
  }
  
  // --- GETTERS Y SETTERS ---
  public boolean getDetected(){
    return this.isDetected;
  }
  
  public void setDetected(boolean isDetected){
    this.isDetected = isDetected;
  }
  
  public Vector getVectorJugador(){
    return this.vectorJugador;
  }
  
  public void setVectorJugador(Vector vectorJugador){
    this.vectorJugador = vectorJugador;
  }
  
  public Vector getVectorJugadorEnemigo(){
    return this.vectorJugadorEnemigo;
  }  
  
  public void setVectorJugadorEnemigo(Vector vectorJugadorEnemigo){
    this.vectorJugadorEnemigo = vectorJugadorEnemigo;
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    imageMode(CENTER);
    image(this.sprite, this.pos.x, this.pos.y, 80, 80);
  }
  
  public void displayCenter(){
    imageMode(CENTER);
    image(this.sprite, 0, 0, 80, 80);
  }
  
  // Método para obtener el vector entre el enemigo y el jugador
  public void calcularVectorJugadorEnemigo(GameObject enemy){
    this.getVectorJugadorEnemigo().setOrigen(this.getPos());
    this.getVectorJugadorEnemigo().setDestino(PVector.sub(enemy.getPos(), this.pos));
  }
  
  // Método para girar al jugador, alineándose con el enemigo
  public void spin(){
    float angle = PVector.angleBetween(this.getVectorJugador().getDestino(), this.getVectorJugadorEnemigo().getDestino());
    PVector rotacion = this.getVectorJugador().cruz(this.getVectorJugadorEnemigo());
    
    int direccion = 1;
    if(rotacion.z < 0){
      direccion = -1;
    }
    
    pushMatrix();
    translate(this.getPos().x, this.getPos().y);
    rotate(angle*direccion);
    this.displayCenter();
    popMatrix();    
  }
  
  // Método para disparar
  public Fireball disparar(){;
    PVector direccion = this.getVectorJugadorEnemigo().getDestino();
    return new Fireball(this.getPos(), direccion);
  }
}
