import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';
import 'package:meta/meta_meta.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home:HomePage()
    );
  }
}