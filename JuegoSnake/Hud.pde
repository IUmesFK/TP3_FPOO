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
  void display() {
    int tiempoTranscurrido = (millis() - tiempoInicial) / 1000;  // Tiempo transcurrido en segundos
    int tiempoRestante = cuentaRegresiva - tiempoTranscurrido;  // Tiempo restante en segundos

    // --- Configuración de la fuente y el color del texto ---
    textFont(fuente);
    fill(255);  // Color blanco
    textAlign(LEFT, TOP);

    // --- Mostrar el tiempo restante ---
    if (tiempoRestante >= 0) {
      text("Tiempo restante: " + tiempoRestante + " segundos", 10, 10);
    } else {
      text("¡Tiempo agotado!", 10, 10);
    }
  }
}
