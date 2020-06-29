import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _stiloTexto = TextStyle(
    fontSize: 30,
  );

  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Arturito'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Numero de taps', style: _stiloTexto),
            Text('$_conteo', style: _stiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        SizedBox(
          width: 50,
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(
          width: 50,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
    );
  }

  void _agregar(){ setState(() => _conteo++);}

  void _sustraer(){ setState(() => _conteo--);}
  void _reset(){ setState(() => _conteo = 0);}
}
