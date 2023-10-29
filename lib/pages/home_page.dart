import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
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
      
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const CatalogHeader(),
             if(CatalogModel.items.isNotEmpty)
               const Expanded(child: Cataloglist())
            else
               const Center(child: CircularProgressIndicator(),)
          ],),
        ),
      )
    );  
    return scaffold;
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Catalog App",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
              Text("Trending products",style: TextStyle(fontSize: 20),)
        
          ],);
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index){
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.network(
            catalog.image
          ).box.color(MyTheme.creamColor).make()
        ],
      ),
    ).white.rounded.square(100).make().py16();
  }
}
