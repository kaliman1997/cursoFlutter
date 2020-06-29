

import 'package:flutter/material.dart';

class ALertPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: (){
          Navigator.pop(context);
        }),
        body: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            onPressed: () => mostrarAlerta(context),
            color : Colors.blue,
            child: Text('Mostrar alerta'),

          ),
        ),
        

    );
  }

  void mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('wqerq werwr wetwet 4twt2w ?'),],
          ),
          actions: <Widget>[
            FlatButton(
              
              onPressed: ()=>Navigator.of(context).pop(), 
              child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
                child: Text('Ok'))
          ],


        );

      },
      );
  }


}