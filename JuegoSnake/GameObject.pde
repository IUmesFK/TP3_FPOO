abstract class GameObject{
   protected PVector posicion;

  GameObject(){

  }

  abstract void display();

  void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
  PVector getPosicion(){
    return this.posicion;
  }


}
