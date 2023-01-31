import 'package:flutter/material.dart';
import 'package:random_color_generator/home_screen.dart';

void main() {
  runApp(const Main());
}

///Main
class Main extends StatelessWidget {
  ///constructor of Main
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
