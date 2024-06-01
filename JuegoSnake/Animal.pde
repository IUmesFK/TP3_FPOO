class Animal extends GameObject{
  protected PImage imagen;
  protected int puntaje;
  
  public Animal() {
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion) {
    this.posicion=posicion;
  }
  
  public void display() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 30, 30);
  }
}
