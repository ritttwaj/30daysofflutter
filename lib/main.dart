import 'package:flutter/material.dart';
import 'package:meta/meta_meta.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
           child: Text("WELCOME TO MY APP GUYS")
            ),
        ),
      ),
    );
  }
}