class Player extends GameObject{  
  
  private boolean isDetected;

  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public Player(){
    this.pos = new PVector(mouseX,mouseY);
    this.isDetected = false;
    this.sprite = loadImage("player.png");
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    imageMode(CENTER);
    image(this.sprite, this.pos.x, this.pos.y, 80, 80);
  }
  
  // --- GETTERS Y SETTERS ---
  public boolean getDetected(){
    return this.isDetected;
  }
  
  public void setDetected(boolean isDetected){
    this.isDetected = isDetected;
  }
}
