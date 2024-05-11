Player player;
Enemy enemy;

float DISTANCIA = 250;

void setup(){
  size(800,800);
   noSmooth();
   noCursor();
   
   player = new Player();
   enemy = new Enemy();
}

void draw(){
  background(#0b1a0b);
  
  player.setPos(new PVector(mouseX, mouseY));
  player.calcularVectorJugadorEnemigo(enemy);
  
  println("Distancia: " + player.getVectorJugadorEnemigo().getDestino().mag());
  
  if (player.getVectorJugadorEnemigo().getDestino().mag() < DISTANCIA){
    player.spin();  
  } else {
    player.display();
  }
  
  enemy.display();
}
