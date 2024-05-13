public class GameObject{
  protected PVector pos;
  //protected PImage sprite;
  
  // --- CONSTRUCTOR SIN PARÁMETROS ---
  public GameObject(){}
  
  // --- CONSTRUCTOR PARAMETRIZADO ---
  public GameObject(PVector pos){
    this.pos = pos;
  }

  // -- GETTERS Y SETTERS ---
  public PVector getPos(){
    return this.pos;
  }
  
  public void setPos(PVector pos){
    this.pos = pos;
  }
  /*
  public PImage getSprite(){
    return this.sprite;
  }
  
  public void setSprite(String sprite){
    this.sprite = loadImage(sprite);
  }
  */
}
