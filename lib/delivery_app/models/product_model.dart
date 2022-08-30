import 'package:flutter/material.dart';
import 'package:ui_challenges/delivery_app/style.dart';

class ProductList {
  Color color;
  String tag; // Fruits
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

List<ProductList> productList = [
  ProductList(
    color: AppColors.blue,
    title: "Salad",
    image: "assets/images/delivery/salad.png",
    market: "Lynx Market",
    distance: "10min",
    grams: "100 grams",
    kcal: "437kcal",
  ),
  ProductList(
    color: AppColors.orangeCard,
    title: "Atom Plate",
    image: "assets/images/earbuds/logo.png",
    market: "Big W Market",
    distance: "15min",
    grams: "240 grams",
    kcal: "850kcal",
  ),
  ProductList(
    color: AppColors.pink,
    title: "Atom Plate",
    image: "assets/images/earbuds/logo.png",
    market: "Colls Market",
    distance: "25min",
    grams: "150 grams",
    kcal: "676kcal",
  ),
];
