class Fireball extends GameObject{  
  private float speed;
  private PVector direccion;

  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Fireball(PVector pos, PVector direccion){
    this.pos = pos;
    this.speed = 15;
    this.sprite = loadImage("fireball.png");
    this.direccion = direccion;
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    imageMode(CENTER);
    image(this.sprite, this.pos.x, this.pos.y, 40, 40);
  }
  
  // Método para moverse
  public void move(){
    this.setPos(this.getPos().add(this.direccion.normalize().mult(speed)));
  }
}
