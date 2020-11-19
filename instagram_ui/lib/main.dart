import 'package:flutter/material.dart';

import 'instahome.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram-UI',
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black,fontFamily: 'Aveny')),
        textTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      home: InstaHome(),
    );
  }
}