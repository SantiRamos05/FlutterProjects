import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/scroll_desing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_screnn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic-design':( _ )=> BasicDesingScreen(),
        'scroll_screen':( _ )=> ScrollScreen(),
        'home_screen':( _ )=> HomeScreen(),
      },
    );
  }
}
