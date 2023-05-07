import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:meta/meta_meta.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light
        
      ),
      initialRoute: "/",
      
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}