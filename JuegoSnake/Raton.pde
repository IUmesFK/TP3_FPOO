class Raton extends Animal{
  public Raton() {
  }
  
  public Raton(PVector posicion, PImage imagen, int puntaje) {
    this.posicion=posicion;
    this.imagen=imagen;
    this.puntaje=puntaje;
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
    imagen=loadImage("raton.png");
    super.display();
  }
}
