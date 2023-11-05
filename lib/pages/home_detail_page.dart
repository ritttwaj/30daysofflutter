import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Item Catalog;
  const HomeDetailPage({Key? key,required this.Catalog}):assert(Catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white                               ,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${Catalog.price}".text.bold.xl4.red800.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(StadiumBorder())
                      ),
                       child: "Buy".text.make()).wh(100, 50)
                  ],
                ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(Catalog.id.toString()),
              child: Image.network(Catalog.image)).h32(context),
              Expanded(child: VxArc(
                  height: 10.0,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      Catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                      Catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                      10.heightBox,
                    ],
                  ),
                ).py64(),
              ))
          ],
        ),
      ),
    );
  }
}