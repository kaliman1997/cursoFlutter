import 'dart:convert';

void main() {
  
  final cuadrado = Cuadrado();

  cuadrado.lado = 10;
  
  print(cuadrado);
  
  print(cuadrado.area);
  
}

class Cuadrado {
  double _lado;
  double _area;
  
  set lado(double valor){
    if(valor <= 0){
      throw 'el lado no puede ser menor o igual a cero';
      
    }
    
    _lado = valor;
    
  }
  
  double get area =>
     _lado * _lado;


  String toString() => 'lado: $_lado - ';
}
