class Transform{
  private PVector position;
  
  public Transform(PVector position){
    this.position = position;
  }
  
  public PVector getPosition(){
    return this.position;
  }
  
  public void setPosition(PVector position){
    this.position = position;
  }
}
