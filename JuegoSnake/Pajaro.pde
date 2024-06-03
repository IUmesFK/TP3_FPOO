class Pajaro extends Animal{
  public Pajaro() {
  }
  
  public Pajaro(PVector posicion, PImage imagen) {
    this.posicion=posicion;
    this.imagen=imagen;
  }
  
  public PVector getPosicion() {
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion) {
    this.posicion=posicion;
  }
  
  public PImage getImagen() {
    return this.imagen;
  }
  
  public void setImagen(PImage imagen) {
    this.imagen=imagen;
  }
  
  public int getPuntaje() {
    return this.puntaje;
  }
  
  public void setPuntaje(int puntaje) {
    this.puntaje=puntaje;
  }
  
  public void display() {
    imagen=loadImage("pajaro.png");
    super.display();
  }
}
