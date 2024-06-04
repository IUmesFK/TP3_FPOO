public class Cuerpo{
  PVector posicion;
  
  Cuerpo(){
  }
  
  Cuerpo(PVector pos){
    this.posicion=pos;
  }
void display(){
  fill(#10E84B);
  strokeWeight(5);
  rect(this.posicion.x,this.posicion.y,20,20);
}



}
