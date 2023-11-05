import 'package:flutter/material.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  

  @override
  Widget build(BuildContext context) {
    return Image.network(
            image,
          ).box.rounded.p8.color(MyTheme.creamColor).make().p16();
  }
}
