import 'package:flutter/material.dart';
import 'homepage.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: HomePage(),
    );
  }
}