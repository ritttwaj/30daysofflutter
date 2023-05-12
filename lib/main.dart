import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:meta/meta_meta.dart';
import 'package:google_fonts/google_fonts.dart';
//git push --set-upstream origin 

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
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light
        
      ),
      initialRoute: "/",
      
      routes: {
        "/": (context) => LoginPage(),
        MyRoute.homeRoute: (context) => HomePage(),
        MyRoute.loginRoute:(context) => LoginPage()
      },
    );
  }
}