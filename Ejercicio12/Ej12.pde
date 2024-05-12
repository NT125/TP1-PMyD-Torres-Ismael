Player player;
Enemy enemy;

ArrayList<Fireball> balas;

float DISTANCIA = 250;

void setup(){
  size(800,800);
   noSmooth();
   noCursor();
   
   player = new Player();
   enemy = new Enemy();
   
   //ArrayList para almacenar las balas
   balas = new ArrayList<Fireball>();
   
}

void draw(){
  background(#0b1a0b);
  
  player.setPos(new PVector(mouseX, mouseY));
  player.calcularVectorJugadorEnemigo(enemy);
  
  //println("Distancia: " + player.getVectorJugadorEnemigo().getDestino().mag());
  
  textAlign(CENTER,CENTER);
  textSize(20);
  
  if (player.getVectorJugadorEnemigo().getDestino().mag() < DISTANCIA){
    player.spin();  
    fill(#ffffff);
    text("CLIC IZQ.: Disparar", width/2, height-100);
  } else {
    player.display();
  }
  
  enemy.display();
  
  for(Fireball bala: balas){
    bala.display();
    bala.move();
   /* if (bala.getPos().x > width || bala.getPos().x < 0 || bala.getPos().y > height || bala.getPos().y < 0){
      balas.remove(bala);
    } */
  }
}

void mousePressed(){
   if (player.getVectorJugadorEnemigo().getDestino().mag() < DISTANCIA){
    balas.add(player.disparar());
  }
}
