import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la Imagen',
        divisions: 20,
        min: 10,
        max: 400,
        value: _valorSlider,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                _valorSlider = valor;
                print(valor);
                setState(() {});
              });
  }

  Widget _crearImagen() {
    return Image(
        width: _valorSlider,
        fit: BoxFit.contain,
        image: NetworkImage(
            'https://www.sanborns.com.mx/imagenes-sanborns-ii/1200/830659009327.jpg'));
  }

  Widget _checkBox() {
    /*     return Checkbox(
                    value: _bloquearCheck,
                    onChanged: (valor) {
                      _bloquearCheck = valor;
                      setState(() {});
                    }); */

    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          _bloquearCheck = valor;
          setState(() {});
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          _bloquearCheck = valor;
          setState(() {});
        });
  }
}
