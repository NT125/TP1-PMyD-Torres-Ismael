Enemy enemy;
Player player;
Fireball bala;

PFont pixelOp;

void setup(){
  size(1080,600);
  noStroke();
  noCursor();
  noSmooth();
  
  pixelOp = createFont("PixelOperatorSC-Bold.ttf", 25);
  textFont(pixelOp);
  
  enemy = new Enemy(new PVector(width/3, height/2));
  player = new Player();
  bala = new Fireball();
  
}

void draw(){
  background(#111117);
  
  player.setPos(new PVector(mouseX, mouseY));
  
  enemy.calcularVectorEnemigoJugador(player);      
  int anguloRedond = round(degrees(acos(enemy.vectorEnemigo.punto(enemy.vectorEnemigoJugador))));  
     
  player.display();
  enemy.display();
  
  enemy.detectarJugador();
  if (enemy.jugadorDetectado == true) {
    enemy.disparar(player, bala);
    player.setSprite("playerscared.png");
    enemy.setSprite("enemySGshoot.png");
  } else {
    bala.setPos(new PVector(width/3+50, height/2));  
    player.setSprite("player.png");
    enemy.setSprite("enemySG.png");
  }
  
  //DEBUG
  fill(#eaeaea);
  textSize(20);
  textAlign(LEFT,CENTER);
  text("Producto punto: " + enemy.getVectorEnemigo().punto(enemy.vectorEnemigoJugador), width/2.5, height-100);
  text("Ángulo entre jugador y enemigo: " + anguloRedond + "° (redond.)", width/3, height-50);
}
