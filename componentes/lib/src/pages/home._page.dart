import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Origial'),
      ),
      body: _lista(),
    );
  }
  Widget _lista(){

    //print(MenuProvider.opciones);
    //MenuProvider.cargarData()
    return FutureBuilder(
      future: MenuProvider.cargarData(),
      initialData: [] ,
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error'));
        }
 
        if (!snapshot.hasData) {
          return Center(child: Text('No hay data'));
        }
 
        return ListView(
          children: _getListItems(snapshot.data, context),
        );
      },
    );
    
  }

 List<Widget> _getListItems(List<dynamic>? items, BuildContext context) {
    final List<Widget> options = [];
 
    items?.forEach((element) {
      final tmp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, element['ruta']);

          //final route = MaterialPageRoute(
          //  builder: (context)=> AlertPage()
          //);
          //Navigator.push(context, route);

        },
      );
 
      options..add(tmp)..add(Divider());
    });
 
    return options;
  }
  
}