import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta_meta.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "with rits";
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
        body: Center(
          child: Container(
           child: Text("Welcome to $days days of flutter $name")
            ),
        ),
        drawer: Drawer(),
      );
  }
}