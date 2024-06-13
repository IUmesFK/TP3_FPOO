class Tanque {
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad;
  ArrayList<Bala>bala;
  
  Tanque(ImageComponent image,Transform transform){
    this.transform=transform;
    this.imageComponent=image;
    bala=new ArrayList<Bala>();
}
  
  void display(){
    for(int i=bala.size()-1; i>=0; i--){
      Bala balas=bala.get(i);
      balas.display();
      balas.movimientoBala();
      if(balas.transform.getPosition().x<0){
        bala.remove(i);
      }
    }
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosition(),40,40);
  }
  
  void creacionBala(){
    bala.add(new Bala(new Transform(new PVector(this.transform.getPosition().x,this.transform.getPosition().y)),
             new PVector(200*Time.getDeltaTime(frameRate),200*Time.getDeltaTime(frameRate))));
  }
  void movimiento(){
    switch(key){
      case'a':
      case'A':
        this.transform.getPosition().x-=this.velocidad.x;
        break;
      case'd':
      case'D':
        this.transform.getPosition().x+=this.velocidad.x;
        break;
    }
    
  }
  void setVelocidad(PVector vel){
    this.velocidad=vel;
  }
  
  PVector getVelocidad(){
    return this.velocidad;
  }
  
  
}
