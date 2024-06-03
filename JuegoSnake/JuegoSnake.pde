Escenario escenario;
Snake snake;
Hud hud;
private int idTipoAnimal;
private int limiteCantidad;
private int tiempoInicial;  // Tiempo inicial en milisegundos
private int cuentaRegresiva;  // Tiempo de cuenta regresiva en segundos
private int puntaje;
private int puntajeInsecto;
private int puntajePajaro;
private int puntajeRaton;
private int tipoAnimalComido;
private int tiempoAnimalComido; // Para indicar en qué tiempo se comió al animal

void setup(){
  size(400,400);
  frameRate(60);
  tiempoInicial=millis();
  puntaje=0;
  cuentaRegresiva=60;
  idTipoAnimal = int(random(1, 4));
  limiteCantidad = 2;
  escenario=new Escenario(width/2,height/2);
  escenario.mostrarFrames();
  escenario.insecto.setPuntaje(puntajeInsecto);
  puntajeInsecto=4;
  escenario.pajaro.setPuntaje(puntajePajaro);
  puntajePajaro=10;
  escenario.raton.setPuntaje(puntajeRaton);
  puntajeRaton=7;
  snake=new Snake();
  hud=new Hud();
}

void draw(){
  background(0);
  int tiempoTranscurrido = (millis() - tiempoInicial) / 1000;  // Tiempo transcurrido en segundos
  int tiempoRestante = cuentaRegresiva - tiempoTranscurrido;  // Tiempo restante en segundos
  escenario.display();
  snake.display();
  snake.movimiento();
  hud.mostrarTiempo(tiempoRestante);
  hud.mostrarPuntaje(puntaje);
  // ---- Estructura de control if utilizada para mostrar el texto de qué animal se comió y en qué tiempo, sin verse modificada durante la ejecución del programa ----
  if(tiempoAnimalComido > 0 && millis() / 1000 < tiempoAnimalComido + 2500 / 1000) {
    if (idTipoAnimal == 1) {
      hud.mostrarAnimalesComidos(tipoAnimalComido, tiempoAnimalComido, snake.cabeza);
    } else if (idTipoAnimal == 2) {
      hud.mostrarAnimalesComidos(tipoAnimalComido, tiempoAnimalComido, snake.cabeza);
    } else if (idTipoAnimal == 3) {
      hud.mostrarAnimalesComidos(tipoAnimalComido, tiempoAnimalComido, snake.cabeza);
    }
  }
  
  for(int i=0; i<limiteCantidad; i++) {
    switch(idTipoAnimal) {
      case 1:{
        escenario.mostrarPrimerAnimal(idTipoAnimal, snake.cabeza);
        if(escenario.distancia<25) {
          snake.crecer();
          snake.cabeza.comerAnimal(idTipoAnimal, tiempoTranscurrido);
          tipoAnimalComido=idTipoAnimal;
          tiempoAnimalComido = millis() / 1000;
          puntaje+=puntajeInsecto;
          escenario.mostrarNuevoAnimal();
        }
      break;
      }
      case 2:{
        escenario.mostrarPrimerAnimal(idTipoAnimal, snake.cabeza);
        if(escenario.distancia<25) {
          snake.crecer();
          snake.cabeza.comerAnimal(idTipoAnimal, tiempoTranscurrido);
          tipoAnimalComido=idTipoAnimal;
          tiempoAnimalComido = millis() / 1000;
          puntaje+=puntajePajaro;
          escenario.mostrarNuevoAnimal();
        }
      break;
      }
      case 3:{
        escenario.mostrarPrimerAnimal(idTipoAnimal, snake.cabeza);
        if(escenario.distancia<25) {
          snake.crecer();
          snake.cabeza.comerAnimal(idTipoAnimal, tiempoTranscurrido);
          tipoAnimalComido=idTipoAnimal;
          tiempoAnimalComido = millis() / 1000;
          puntaje+=puntajeRaton;
          escenario.mostrarNuevoAnimal();
        }
      break;
      }
    }
  }
}
