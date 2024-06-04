class Cabeza extends GameObject{
  private PVector velocidad;
  private int tamano;
  private ArrayList<ListaAnimalComido> animalesComidos;
  
  Cabeza(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.tamano=20;
    animalesComidos = new ArrayList<ListaAnimalComido>();
  }
  void display(){
    fill(#E0F016);
    rect(this.posicion.x,this.posicion.y,tamano,tamano);
  }
  void mover(){
    if(key=='w'||key=='W'){
        this.posicion.y-=this.velocidad.y;
    }
    if(key=='s'||key=='S'){
        this.posicion.y+=this.velocidad.y;
    }
    if(key=='a'||key=='W'){
        this.posicion.x-=this.velocidad.x;
    }
    if(key=='d'||key=='D'){
        this.posicion.x+=this.velocidad.x;
    }
    if(this.posicion.x>width){
      this.posicion.x=0;
    }else if(this.posicion.x<0){
      this.posicion.x=width;
    }
    if(this.posicion.y>height-50){
      this.posicion.y=50;
    }else if(this.posicion.y<50){
      this.posicion.y=height-50;
    }
  }
  public void comerAnimal(int idTipoAnimal, int tiempoActual) {
    switch(idTipoAnimal) {
      case 1:{
        animalesComidos.add(new ListaAnimalComido(1, tiempoActual));
       
      break;
      }
      case 2:{
        animalesComidos.add(new ListaAnimalComido(2, tiempoActual));
      break;
      }
      case 3:{
        animalesComidos.add(new ListaAnimalComido(3, tiempoActual));
      break;
      }
    }
  }
  
  void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  public PVector getVelociad(){
    return this.velocidad;
  }
}
