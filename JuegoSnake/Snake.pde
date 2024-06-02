class Snake{
  Cabeza cabeza;
  private ArrayList<Cuerpo> cuerpo;
  private ArrayList<PVector> posicionesAnteriores;
  private int retraso;
  Snake(){
    cabeza = new Cabeza(new PVector(width/2, height/2), new PVector(80* Time.getDeltaTime(frameRate), 80* Time.getDeltaTime(frameRate)));
    cuerpo = new ArrayList<Cuerpo>();
    cuerpo.add(new Cuerpo(new PVector(cabeza.posicion.x, cabeza.posicion.y)));
    posicionesAnteriores = new ArrayList<PVector>();
    retraso = 15;  // Ajusta este valor para cambiar la distancia entre la cabeza y el cuerpo
  }  
  void display() {
    for (Cuerpo cu : cuerpo) {
       cu.display();
    }
    cabeza.display();
    cabeza.mover(); 
}
void movimiento() {
  // Almacenar la posición actual de la cabeza
  posicionesAnteriores.add(0, cabeza.posicion.copy());

  // Mover los segmentos del cuerpo a las posiciones anteriores de la cabeza
  for (int i = 0; i < cuerpo.size(); i++) {
    // Verificar si la distancia entre la cabeza y el segmento del cuerpo es mayor que el tamaño de un segmento
    if (PVector.dist(cabeza.posicion, cuerpo.get(i).posicion) > cabeza.tamano) {
      cuerpo.get(i).posicion = posicionesAnteriores.get(i * retraso);
    }
  }

  while (posicionesAnteriores.size() > cuerpo.size() * retraso) {
    posicionesAnteriores.remove(posicionesAnteriores.size() - 1);
  }

}


  void crecer() {
      // Agregar un nuevo segmento al final del cuerpo en la misma posición que el último segmento
      cuerpo.add(new Cuerpo(cuerpo.get(cuerpo.size() - 1).posicion.copy()));
  }  
}
