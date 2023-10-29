import 'package:flutter/material.dart';


class CatalogModel{
  static List<Item> items = [
  Item(
    id: 1,
    name: "Iphone 12 PRO",
    desc: "Apple Iphone 12th generation ",
    price: 1900,
    color: "#33505a",
    image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-pro-graphite-2020?wid=200&hei=200&fmt=jpeg&qlt=95&.v=1635202842000",
)
];

}

class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image,
    
  };
} 



