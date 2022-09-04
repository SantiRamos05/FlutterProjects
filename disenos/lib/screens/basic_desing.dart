
import 'package:flutter/material.dart';


class BasicDesingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //IMAGEN
          Image(image: AssetImage('assets/img.jpg'),),

          //ROW1
          Title(),

          //BUTTOM SESION
          ButtomSection(),

          //DESCRIPCION
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('asalkd ndasldna sldn asnd aslknda skdna sdn as d,a ansdaisdi f sdnf sdnfsdf sdf sdmfn smnf sldf sdfn smdn smdnf '))
        ],
      )
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      child: Row(
        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hospedaje en lago', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Lago Uzbeco',style: TextStyle(color: Colors.black26),),
            ],
          ),
          Expanded(
            child: Container()
          ),
          Icon(Icons.star, color:Colors.orange),
          Text('25'),
        ],
      ),
    );
  }
}

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icons: Icons.call, text: 'Call',),
          CustomButton(icons: Icons.map, text: 'Mapa',),
          CustomButton(icons: Icons.share, text: 'Share',),
          
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icons;
  final String text;
  
  const CustomButton({
    Key? key, 
    required this.icons, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icons, color:Colors.blue, size: 30,),
        Text(this.text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}