import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widget/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';





class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "with rits";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        
        child: Container(
          padding:  EdgeInsets.all(27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const CatalogHeader(),
             if(CatalogModel.items.isNotEmpty)
               Cataloglist().py16().expand()
            else
               const CircularProgressIndicator().centered().expand(),
          ],),
        ),
      )
    );  
    return scaffold;
  }
  
}





