class Ball extends GameObject{
  
  private Vector vectorObjeto, vectorDireccion;
  private PVector direccion;
  private float velocidad;
  private int radio;
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public Ball(PVector pos, PVector direccion){
    this.pos = pos;
    this.direccion = direccion.normalize();
    this.velocidad = 5;
    this.radio = 10;
    this.vectorObjeto = new Vector(new PVector(this.getPos().x, this.getPos().y),
                                   new PVector(1,0,0));
    this.vectorDireccion = new Vector(new PVector(this.getPos().x, this.getPos().y),
                                   new PVector(this.direccion.x, this.direccion.y));
  }
  
  // --- GETTERS Y SETTERS ---
  public PVector getDireccion() { return this.direccion; }
  public void setDireccion(PVector direccion) { this.direccion = direccion; }
  
  public int getRadio() { return this.radio; }
  public void setRadio(int radio) { this.radio = radio; }
  
  // --- MÉTODOS ---
  // Mueve la pelota según la dirección
  public void move(){
    this.setPos(this.getPos().add(PVector.mult(this.direccion,this.velocidad)));
  }
  
  // Dibuja la pelota
  public void display(){
     noStroke();
     fill(#eeeefe);
     ellipseMode(CENTER);
     circle(this.getPos().x, this.getPos().y, this.getRadio()*2);
  }
  
  // Invierte verticalmente el sentido del movimiento
  public void rebotar(Floor piso){
    PVector nuevaDireccion = piso.getVectorNormal().getDestino().normalize()
                             .mult(PVector.dot(this.direccion, piso.getVectorNormal().getDestino()));
    nuevaDireccion = PVector.mult(nuevaDireccion, 2);
    nuevaDireccion = PVector.sub(this.getDireccion(), nuevaDireccion);
    
    this.setDireccion(nuevaDireccion.normalize());
  }
}
