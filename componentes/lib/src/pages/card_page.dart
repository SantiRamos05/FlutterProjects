// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blueGrey),
            title: Text('Titulo tarjeta 1'),
            subtitle: Text('Pis asnd asnd amsnd mnasd as,nd a,nas,mnd asn asnd a asnd na dansd amsnd amnsd ansd an'),
          ),
          Row(
            mainAxisAlignment:  MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){}, 
                ),
                TextButton(
                child: Text('Ok'),
                onPressed: (){}, 
                ),
            ],)
        ],
        ),
      );
  }

 Widget _cardTipo2() {
   final card = Container(
     
     child: Column(
       // ignore: prefer_const_literals_to_create_immutables
       children: <Widget>[
         FadeInImage(
           placeholder: AssetImage('assets/jar-loading.gif'),
           image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',scale: 1.0),
           fadeInDuration: Duration(milliseconds: 200),
           height: 300.0,
           fit: BoxFit.cover,
         ),
         
         Container(
           padding: EdgeInsets.all(10.0),
           child: Text('lkdalskda  da sdasdk '))
           
       ],
     ),
   );

   return Container(
     child: ClipRRect(
       child: card,
       borderRadius: BorderRadius.circular(20.0),
     ),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20.0),
       color: Colors.white,
       // ignore: prefer_const_literals_to_create_immutables
       boxShadow: <BoxShadow>[
         BoxShadow(
           color: Colors.black26,
           blurRadius: 10.0,
           spreadRadius: 2.0,
           offset: Offset(2.0, -10.0)
         )
       ]),
   );
 }
}