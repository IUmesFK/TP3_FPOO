class ListaAnimalComido{
   private int idTipoAnimal;
  private int tiempoComido;

  public ListaAnimalComido() {
  }
  
  public ListaAnimalComido(int idTipoAnimal, int tiempoComido){
    this.idTipoAnimal = idTipoAnimal;
    this.tiempoComido = tiempoComido;
  }
  
  public int getIdTipoAnimal() {
    return this.idTipoAnimal;
  }
  
  public void setIdTipoAnimal(int idTipoAnimal) {
    this.idTipoAnimal=idTipoAnimal;
  }
  
  public float getTiempoComido() {
    return this.tiempoComido;
  }
  
  public void setTiempoComido(int tiempoComido) {
    this.tiempoComido=tiempoComido;
  }

}
