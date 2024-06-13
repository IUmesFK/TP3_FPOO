class Escenario {
  private PImage imagenE;
  private PVector position;
  
  public Escenario(){
  }
  
  void display(){
    imagenE=loadImage("ecenario.png");
    imageMode(CENTER);
    image(imagenE,this.position.x,this.position.y,width,height);
  }
  
  public PVector getPosition(){
    return this.position;
  }
  
  public void setPosition(PVector position){
    this.position = position;
  }
  
}
