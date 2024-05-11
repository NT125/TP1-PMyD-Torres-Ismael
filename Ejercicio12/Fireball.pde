class Fireball extends GameObject{  
  private float speed;

  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Fireball(PVector pos){
    this.pos = pos;
    this.speed = 10.0;
    this.sprite = loadImage("fireball.png");
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    imageMode(CENTER);
    image(this.sprite, this.pos.x, this.pos.y, 40, 40);
  }
  
  // Método para moverse
  public void move(PVector direccion){
    this.setPos(this.getPos().add(direccion.mult(speed)));
  }
}
