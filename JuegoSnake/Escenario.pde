  public class Escenario extends GameObject{
  PImage[] imagen;
  int imagen1=0;
  int imagenMax=59;
  
  Escenario(float x,float y){
    this.posicion=new PVector(x,y);
    imagen=new PImage[imagenMax];
  }
  void xd(){
    for(int i=0;i<imagen.length;i++){
      imagen[i]=loadImage("escenario"+i+".png");
          imageMode(CENTER);
          frameCount=1;
        }
  }
  void display(){
    image(imagen[imagen1],this.posicion.x,this.posicion.y,width,height);
    imagen1=(imagen1+1)%imagen.length;
  }
}
