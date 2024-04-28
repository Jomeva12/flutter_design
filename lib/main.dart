import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     initialRoute: "HomeScreen",
      routes: {
        "basicDesign": ( context) => BasicDesignScreen(),
        "scrollDesign": ( context) => ScrollDesign(),
        "HomeScreen": ( context) => HomeScreen()
      },
    );
  }
}
