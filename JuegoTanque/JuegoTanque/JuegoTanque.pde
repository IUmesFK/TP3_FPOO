private GestorMurrallas gestorM;
private Tanque tanque;
private Escenario escenario;

void setup(){
  size(400,400);
  frameRate(60);
  gestorM = new GestorMurrallas();
  generarTanque();
  tanque.setVelocidad(new PVector(150*Time.getDeltaTime(frameRate), 5));
  escenario = new Escenario();
  escenario.setPosition(new PVector(width/2, height/2));
}

void draw(){
  background(150);
  escenario.display();
  gestorM.display();
  if(gestorM.muro.isEmpty()) {
    gestorM.generarMuros(15);
  }
  gestorM.verificarColision(tanque.bala);
  tanque.display();
}
void mousePressed(){
  tanque.creacionBala();
}
void keyPressed(){
  tanque.movimiento();
}
void generarTanque(){
  Transform transformTanque = new Transform(new PVector(width/2,height-50));
  ImageComponent imagenTanque = new ImageComponent("tanque.png");
  tanque = new Tanque(imagenTanque, transformTanque);

}
