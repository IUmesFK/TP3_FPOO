public class Muro{
  private int resistencia;
  private Transform transform;
  private ImageComponent imageComponent;
  private int alto;
  private int ancho;
  
  public Muro(){
  }
  
  public Muro(int resistencia, Transform transform, ImageComponent imageComponent, int ancho, int alto){
    this.resistencia=resistencia;
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.ancho=ancho;
    this.alto=alto;
  }
  
  void display(){
    // ---- Esta estructura de control sirve para verificar cuál es la resistencia del muro y según su cantidad muestre una de las 3 opciones antes de destruirse ----
    if(resistencia==10) {
      imageComponent=new ImageComponent("muro3.png");
    } else if(resistencia==20) {
      imageComponent=new ImageComponent("muro2.png");
    } else if(resistencia==30) {
      imageComponent=new ImageComponent("muro.png");
    }
    this.imageComponent.displayImage(transform.getPosition(),ancho,alto);
  }
  
  void debilitar() {
    this.resistencia -= 10;
  }
   
  boolean estaDestruido() {
    return this.resistencia <= 0;
  }
}
