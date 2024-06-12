public class GestorMurrallas {
  private ArrayList<Muro> muro;
  private float distancia;
  private float distanciaMinima = 55; // Distancia mínima para colisiones
  private PVector nuevaPosicion; // Posición del nuevo muro
  private ArrayList<PVector> posicionesOcupadas;
    
  public GestorMurrallas() {
    muro = new ArrayList<Muro>();
  }

  public void display() {
    posicionesOcupadas = new ArrayList<PVector>();
    // ---- Iteración para que se muestren y se muevan cada uno de los muros ----
    for(int i = 0; i < muro.size(); i++) {
      Muro m = muro.get(i);
      m.display();
      posicionesOcupadas.add(m.transform.getPosition()); // Se agrega la posición del muro actual a la lista de posiciones ocupadas
    }
  }
  
  void generarMuros(int cantidadMuros) {
    for(int i = 0; i < cantidadMuros; i++) {
      boolean posicionDisponible = false;  
      // ---- Bucle que se repite hasta encontrar una posición disponible ----
      while(!posicionDisponible) {
        posicionDisponible = true;
        nuevaPosicion =  new PVector(random(40, width - 40), random(40, height - 120));    
        // ---- Se verifica si el nuevo muro se superpone con los muros existentes para saber si puede generarse ahí o no ----
        for(Muro m : muro) {
          if(dist(nuevaPosicion.x, nuevaPosicion.y, m.transform.getPosition().x, m.transform.getPosition().y) <=distanciaMinima) {
            posicionDisponible = false;
          }
        }
      }
      // ---- Se crea el nuevo muro en la posición encontrada y a través de un switch se define tanto su resistencia inicial cómo su imagen correspondiente ----
      int resistenciaInicial=0;
      String nombreImagen = "";
      int opcion=(int) random(1,4);
      switch(opcion) {
        case 1:{
          resistenciaInicial=10;
          nombreImagen = "muro3.png";
        break;
        }
        case 2:{
          resistenciaInicial=20;
          nombreImagen = "muro2.png";
        break;
        }
        case 3:{
          resistenciaInicial=30;
          nombreImagen = "muro.png";
        break;
        }
      }
      ImageComponent imagenMuro = new ImageComponent(nombreImagen);
      muro.add(new Muro(resistenciaInicial, new Transform(new PVector(nuevaPosicion.x, nuevaPosicion.y)), imagenMuro, 40, 40));
    }
  }

  void verificarColision(ArrayList<Bala> balas) {
    // ---- Se hace el recorrido de cada uno de los muros y las balas para poder aplicar correctamente la colisión ----
    for(int i = balas.size() - 1; i >= 0; i--) {
      Bala bala = balas.get(i);
      for(int j = muro.size() - 1; j >= 0; j--) {
        Muro m = muro.get(j);
        distancia = dist(bala.getPosition().x, bala.getPosition().y, m.transform.getPosition().x, m.transform.getPosition().y); // Se calcula la distancia entre una bala y un muro
        // ---- Si la distancia entre cierta bala y cierto muro es menor a 20, se elimina la bala y se debilita el muro ----
        if(distancia < 20) {
          balas.remove(i);
          m.debilitar();
          // ---- Si la resistencia del muro llega a 0, éste se elimina ----
          if(m.estaDestruido()) {
            muro.remove(j);
          }
        }
      }
    }
  }
}
