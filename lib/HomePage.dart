import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigatorDrawer(),
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.blueAccent,
        ));
  }
}
