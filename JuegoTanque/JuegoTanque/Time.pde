static class Time{
  
  static float getDeltaTime(float frames){
    // dado que en Processing los FPS se estabilizan luego de los primeros segundos
    int framesPorSegundo = round(frames); 
    float deltaTime = 1.0/framesPorSegundo;
    return deltaTime;
  }
}
