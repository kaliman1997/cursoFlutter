import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        //padding: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
           _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2(),
                  ],
                ),
              );
            }
          
            Widget _cardTipo1() {
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Titulo'),
                      subtitle: Text('dawrwete3w3fe greg erg45r5h54 45h54h45'),
          
                        leading: Icon(
                      Icons.photo_album,
                      color: Colors.blue,
                    
                    ),
                    
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){}, 
                          child: Text('Cancelar')),
                        FlatButton(
                          onPressed: (){}
                        , child: Text('OK'))
                      ],)
                  ],
                ),
              );
            }
          
          Widget  _cardTipo2() {
            final card = Container(
             
                child: Column(
                  children: <Widget>[
                    FadeInImage(
                      placeholder: AssetImage('assets/jar-loading.gif'), 
                      image: NetworkImage(
                      'https://i.pinimg.com/originals/5c/19/f9/5c19f96794f9a3ef45169ac4b3a74b33.jpg'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 250,
                      fit: BoxFit.fill,
                      ),
      
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('No tengo idea qeu poner')
                        ),
                  ],),
            );

            return Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    spreadRadius: 2,
                    offset: Offset(2, 10)
                  )
                ]
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: card
              ),
            );

          }
}
