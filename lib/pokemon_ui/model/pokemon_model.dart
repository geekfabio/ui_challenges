import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PokemonModel {
  String name;
  String element;
  String height;
  String weight;
  double tagWidth;
  List<FraquezasModel> listFraquezas;
  PokemonModel({
    this.tagWidth = 80,
    required this.name,
    required this.element,
    required this.height,
    required this.weight,
    required this.listFraquezas,
  });
}

class FraquezasModel {
  String text;
  IconData iconData;
  Color color;
  Color borderColor;
  FraquezasModel({
    required this.text,
    required this.iconData,
    required this.color,
    required this.borderColor,
  });
}

List<FraquezasModel> fraquezasBlastoise = [
  FraquezasModel(
      text: "Eletrico",
      iconData: Icons.electric_bolt,
      color: Colors.yellow,
      borderColor: Colors.yellowAccent),
  FraquezasModel(
      text: "Grama",
      iconData: Icons.electric_bolt,
      color: Colors.green,
      borderColor: Colors.greenAccent),
  FraquezasModel(
      text: "Agua",
      iconData: FontAwesomeIcons.droplet,
      color: Colors.blue,
      borderColor: Colors.blueAccent),
];
List<FraquezasModel> fraquezasCharizard = [
  FraquezasModel(
      text: "Eletrico",
      iconData: Icons.electric_bolt,
      color: Colors.yellow,
      borderColor: Colors.yellowAccent),
  FraquezasModel(
      text: "Rocha",
      iconData: Icons.category,
      color: Colors.brown,
      borderColor: Colors.brown),
  FraquezasModel(
      text: "Agua",
      iconData: FontAwesomeIcons.droplet,
      color: Colors.blue,
      borderColor: Colors.blueAccent),
];
