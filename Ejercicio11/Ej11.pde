Enemy enemy;
Player player;
Fireball bala;


void setup(){
  size(1080,600);
  noStroke();
  noCursor();
  
  enemy = new Enemy(new PVector(width/2, height/2));
  player = new Player();
  bala = new Fireball();
  
}

void draw(){
  background(#222229);
  fill(#eaeaef);
  
  player.setPos(new PVector(mouseX, mouseY));
  
  enemy.calcularVectorEnemigoJugador(player);      
  int anguloRedond = round(degrees(acos(enemy.vectorEnemigo.punto(enemy.vectorEnemigoJugador))));  
   
  
  player.display();
  enemy.display();
  
  enemy.detectarJugador();
  if (enemy.jugadorDetectado == true) {
    enemy.disparar(player, bala);
  } else {
    bala.setPos(new PVector(width/2, height/2));  
  }
  
  //DEBUG
  fill(#eaeaea);
  textSize(20);
  textAlign(LEFT,CENTER);
  text("Producto punto: " + enemy.getVectorEnemigo().punto(enemy.vectorEnemigoJugador), width/2.5, height-100);
  text("Ángulo entre jugador y enemigo: " + anguloRedond + "° (redond.)", width/3, height-50);
  
}
