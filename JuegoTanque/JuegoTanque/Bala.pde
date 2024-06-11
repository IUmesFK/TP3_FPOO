public class Bala{
  private Transform transform;
  private PVector velocidad;
  
  Bala( Transform transform,PVector vel){
    this.transform=transform;
    this.velocidad=vel;
  }
  
  void display(){
    circle(this.transform.getPosition().x,this.transform.getPosition().y,10); 
  }
  
  void movimientoBala(){
    this.transform.getPosition().y-=this.velocidad.y;
  }
  
  
public PVector getVelociadad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector vel){
    this.velocidad=vel;
  }

}
