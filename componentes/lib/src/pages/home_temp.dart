import 'package:flutter/material.dart';



class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporal'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearIitemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
        ..add(Divider());
      
    }
    return lista;
  }

  List<Widget> _crearIitemsCorta(){

    return opciones.map(( item ){

      return Column(
        children:<Widget> [
          ListTile(
            title: Text( item + '!'),
            subtitle: Text('Descripcion de esto'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_back),
            onTap: (){},
          ),
          Divider()
        ],
      );
      
    }).toList();


  }
}