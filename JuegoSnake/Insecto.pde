class Insecto extends Animal{
  public Insecto() {
  }
  
  public Insecto(PVector posicion, PImage imagen, int puntaje) {
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
  
  public void setPuntuacion(int puntaje) {
    this.puntaje=puntaje;
  }
  
  public void display() {
    imagen=loadImage("insecto.png");
    super.display();
  }
}
