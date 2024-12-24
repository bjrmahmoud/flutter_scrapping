import 'package:flutter/material.dart';
import 'package:scarpping_test/Screens/SelectionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SelectionScreen(), // Updated to start with SelectionScreen
    );
  }
}
