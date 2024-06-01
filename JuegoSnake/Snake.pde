class Snake{
  Cabeza cabeza;
  
  Snake(){
    cabeza = new Cabeza(new PVector(width/2, height/2), new PVector(80* Time.getDeltaTime(frameRate), 80* Time.getDeltaTime(frameRate)));
  }
  
  void display() {
    cabeza.display();
    cabeza.mover();
  }
  
}
