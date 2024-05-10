class Fireball extends GameObject{  
  private float speed;

  // --- CONSTRUCTOR ---
  public Fireball(){
    this.pos = new PVector(width/2,height/2);
    this.speed = 20.0;
  }
  
  // --- MÉTODOS ---
  // Método display
  public void display(){
    fill(#ffaa00);
    noStroke();
    circle(this.getPos().x, this.getPos().y, 20);
  }
  
  // Método para moverse
  public void move(PVector direccion){
    this.setPos(this.getPos().add(direccion.mult(speed)));
    
    if(this.getPos().x > width || (this.getPos().y < 0 || this.getPos().y > height)){
      this.setPos(new PVector(width/2, height/2));
    }
    
  }

}
