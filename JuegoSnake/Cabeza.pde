class Cabeza extends GameObject{
  private PVector velocidad;
  private int tamano;
  
  Cabeza(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.tamano=20;
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
  }
  
  void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  public PVector getVelociad(){
    return this.velocidad;
  }
}
