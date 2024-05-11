class Fireball extends GameObject{  
  private float speed;

  // --- CONSTRUCTOR ---
  public Fireball(){
    this.pos = new PVector(width/3+50,height/2);
    this.speed = 20.0;
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
    
    if(this.getPos().x > width || (this.getPos().y < 0 || this.getPos().y > height)){
      this.setPos(new PVector(width/3+50, height/2));
    }    
  }
}
