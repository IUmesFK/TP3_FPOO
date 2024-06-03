class Hud {
  PFont fuente;  // Fuente para mostrar el texto
  int tiempoInicial;  // Tiempo inicial en milisegundos
  int cuentaRegresiva;  // Tiempo de cuenta regresiva en segundos

  // --- SETTERS Y GETTERS ---

  public void setCuentaRegresiva(int cuentaRegresiva){
    this.cuentaRegresiva = cuentaRegresiva;
  }
  
  public int getCuentaRegresiva(){
    return this.cuentaRegresiva;
  }
  

  // --- METODO CONSTRUCTOR ---
  Hud() {
    this.fuente = createFont("Arial", 16, true);  // Crear una fuente
    this.tiempoInicial = millis();  // Registrar el tiempo de inicio
  }

  // --- METODOS ---
  public void mostrarTiempo(int tiempoRestante) {
    // --- Configuración de la fuente y el color del texto ---
    textFont(fuente);
    fill(255);  // Color blanco
    textAlign(LEFT, TOP);

    // --- Mostrar el tiempo restante ---
    if (tiempoRestante > 1) {
      textAlign(LEFT, TOP);
      text("Tiempo restante: " + tiempoRestante + " segundos", 10, 10);
    } else if (tiempoRestante == 1) {
      textAlign(LEFT, TOP);
      text("Tiempo restante: " + tiempoRestante + " segundo", 10, 10);
    } else {
      textAlign(LEFT, TOP);
      text("¡Tiempo agotado!", 10, 10);
    }
  }
  
  public void mostrarAnimalesComidos(int idTipoAnimal, int tiempoTranscurrido, Cabeza cabeza) {
    // ---- Estructura iterativa for que se utiliza para recorrer la lista de los animales que se comió ----
    for(int i = 0; i < cabeza.animalesComidos.size(); i++) {
      String tipoAnimal = "";
      // ---- switch que sirve para saber que tipo de animal se comió y mostrarlo en la pantalla ----
      switch(idTipoAnimal) {
        case 1:{
          tipoAnimal = "insecto";
        break;
        }
        case 2:{
          tipoAnimal = "pájaro";
        break;
        }
        case 3:{
          tipoAnimal = "ratón";
        break;
        }
      }
      String mensaje = "Se comió un " + tipoAnimal + " (" + tiempoTranscurrido + "s)";
      textFont(fuente);
      fill(#40E0D0);
      textSize(30);
      textAlign(CENTER);
      text(mensaje, width/2, height-20);
    }
  }
  
  public void mostrarPuntaje(int puntaje) {
    textFont(fuente);
    fill(255);
    textAlign(RIGHT, TOP);
    text("Puntaje: " + puntaje, width-10, 10);
  }
}
