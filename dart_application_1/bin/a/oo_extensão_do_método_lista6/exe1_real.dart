class Real{

  double valor= 0;

}


extension MetodosReal on Real{
  int toInt(){
    return valor.toInt();
  }
  String paraString(){
    return valor.toString();
  }
  String paraStringAsFixed(int digits){
    return valor.toStringAsFixed(digits);
  }
  void deString(String valor){
    
  }
}