import 'package:flutter/material.dart';
import 'package:ui_challenges/delivery_app/style.dart';

class ProductList {
  Color color;
  String tag;
  String title;
  String image;

  String market;
  String distance;
  String grams;
  String kcal;

  ProductList(
      {this.color = AppColors.black,
      this.tag = "Fruits",
      this.title = "Pizza",
      this.image = "Hello",
      this.market = "dart",
      this.distance = "m",
      this.grams = "grama",
      this.kcal = "hhasa"});
}

List<ProductList> fruitList = [
  ProductList(
    color: AppColors.blue,
    title: "Salad",
    image: "assets/images/delivery/pessego.png",
    market: "Store Market",
    distance: "10min",
    grams: "250 grams",
    kcal: "697kcal",
  ),
  ProductList(
    color: AppColors.orangeCard,
    title: "Atom Plate",
    image: "assets/images/delivery/salad.png",
    market: "Nosso Super",
    distance: "15min",
    grams: "052 grams",
    kcal: "850kcal",
  ),
  ProductList(
    color: AppColors.pink,
    title: "Atom Plate",
    image: "assets/images/delivery/organic.png",
    market: "Colls Market",
    distance: "25min",
    grams: "052 grams",
    kcal: "676kcal",
  ),
];

List<ProductList> coffeList = [
  ProductList(
    color: const Color.fromARGB(255, 0, 105, 53),
    title: "Coffe Basic",
    image: "assets/images/delivery/coffe1.png",
    market: "Supermercado",
    distance: "10min",
    grams: "052 grams",
    kcal: "437kcal",
  ),
  ProductList(
    color: const Color.fromARGB(255, 2, 151, 220),
    title: "Coffe Premiun",
    image: "assets/images/delivery/coffe2.png",
    market: "Nosso Super",
    distance: "15min",
    grams: "152 grams",
    kcal: "345kcal",
  ),
  ProductList(
    color: const Color.fromARGB(255, 164, 64, 203),
    title: "Coffe Delta",
    image: "assets/images/delivery/coffe3.png",
    market: "Candando",
    distance: "25min",
    grams: "150 grams",
    kcal: "476kcal",
  ),
];
