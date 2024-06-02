Escenario esenario;
Snake snake;
void setup(){
  size(400,400);
  frameRate(60);
  esenario=new Escenario(width/2,height/2);
  esenario.xd();
  snake=new Snake();
}

void draw(){
background(0);
  esenario.display();
  snake.display();
  snake.movimiento();
}
