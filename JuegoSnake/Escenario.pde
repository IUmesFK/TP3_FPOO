  public class Escenario extends GameObject{
  private Insecto insecto;
  private PImage insectoImagen;
  private Pajaro pajaro;
  private PImage pajaroImagen;
  private Raton raton;
  private PImage ratonImagen;
  PImage[] imagen;
  int imagen1=0;
  int imagenMax=59;
  private float distancia;
  
  Escenario(float x,float y){
    this.posicion=new PVector(x,y);
    imagen=new PImage[imagenMax];
    insecto = new Insecto(new PVector(random(50, width-50), random(50, height-50)), insectoImagen);
    pajaro = new Pajaro(new PVector(random(50, width-50), random(50, height-50)), pajaroImagen);
    raton = new Raton(new PVector(random(50, width-50), random(50, height-50)), ratonImagen);
  }
  void mostrarFrames(){
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
  
  public void mostrarPrimerAnimal(int idTipoAnimal, Cabeza cabeza) {
    switch(idTipoAnimal) {
      case 1:{
        if(insecto != null) {
          insecto.display();
          distancia=dist(cabeza.posicion.x, cabeza.posicion.y, insecto.posicion.x, insecto.posicion.y);
        }
      break;
      }
      case 2:{
        if(pajaro != null) {
          pajaro.display();
          distancia=dist(cabeza.posicion.x, cabeza.posicion.y, pajaro.posicion.x, pajaro.posicion.y);
        }
      break;
      }
      case 3:{
        if(raton != null) {
          raton.display();
          distancia=dist(cabeza.posicion.x, cabeza.posicion.y, raton.posicion.x, raton.posicion.y);
        }
      break;
      }
    }
  }

  public void mostrarNuevoAnimal() {
    idTipoAnimal = int(random(1, 4));
    if(idTipoAnimal == 1) {
      insecto = new Insecto(new PVector(random(50, width - 50), random(50, height - 50)), insectoImagen);
    } else if(idTipoAnimal == 2) {
      pajaro = new Pajaro(new PVector(random(50, width - 50), random(50, height - 50)), pajaroImagen);
    } else if(idTipoAnimal == 3) {
      raton = new Raton(new PVector(random(50, width - 50), random(50, height - 50)), ratonImagen);
    }
  }
}
