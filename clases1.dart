import 'dart:convert';

void main() {
  final wolverine = Heroe(nombre: 'Logan', poder: 'regeneracion');

  print(wolverine);

  final rawJSON = '{   "nombre" : "ciclope",  "poder" : "vision"  }';

  Map parsedJSON = json.decode(rawJSON);

  print(parsedJSON);

  final ciclope = new Heroe.fromJSON(parsedJSON);

  print(ciclope);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({this.nombre, this.poder});

  Heroe.fromJSON(Map parsedJSON) {
    nombre = parsedJSON['nombre'];
    poder = parsedJSON['poder'];
  }

  String toString() => 'nombre: $nombre - poder $poder';
}
