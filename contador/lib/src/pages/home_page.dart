import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle stiloTexto = TextStyle(fontSize: 30,);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Numero de taps', style: stiloTexto
              ), 
              Text('0', style: stiloTexto)
              ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Holaaaaaa');

          },

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        
        
        );
  }
}
