Enemy enemy;
Player player;


void setup(){
  size(1080,600);
  noStroke();
  noCursor();
  
  enemy = new Enemy(new PVector(width/2, height/2));
  player = new Player(new PVector(0, 0));
  
}

void draw(){
  background(#222229);
  fill(#eaeaef);
  
  player.setPos(new PVector(mouseX, mouseY));
  
  enemy.display();
  player.display();
  
  enemy.calcularVectorEnemigoJugador(player);
  
  //DEBUG
  textSize(20);
  textAlign(LEFT,CENTER);
  text("Producto punto: " + enemy.vectorEnemigo.punto(enemy.vectorEnemigoJugador), width/2.5, height-100);
  
}
