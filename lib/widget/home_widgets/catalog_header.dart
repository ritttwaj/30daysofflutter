import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';



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