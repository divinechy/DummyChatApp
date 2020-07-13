import 'package:dummychatapp/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dummy Chat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primaryColor: Colors.teal[300],
         accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    );
  }
}