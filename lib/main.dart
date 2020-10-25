import 'package:flutter/material.dart';
import 'screens/home_.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescrn(),
    );
  }
}
