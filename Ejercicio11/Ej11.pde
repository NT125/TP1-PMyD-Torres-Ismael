Enemy enemy;
Player player;


void setup(){
  size(1080,600);
  noStroke();
  noCursor();
  
  enemy = new Enemy(new PVector(width/2, height/2));
  player = new Player();
  
}

void draw(){
  background(#222229);
  fill(#eaeaef);
  
  player.setPos(new PVector(mouseX, mouseY));
  
  enemy.calcularVectorEnemigoJugador(player);      
  int anguloJugadorEnemigo = round(degrees(acos(enemy.vectorEnemigo.punto(enemy.vectorEnemigoJugador))));  
   
  
  player.display();
  enemy.display();
  
  enemy.detectarJugador();
  
  //DEBUG
  fill(#eaeaea);
  textSize(20);
  textAlign(LEFT,CENTER);
  text("Producto punto: " + enemy.getVectorEnemigo().punto(enemy.vectorEnemigoJugador), width/2.5, height-100);
  text("Ángulo entre jugador y enemigo: " + anguloJugadorEnemigo + "° (redond.)", width/3, height-50);
  
}
