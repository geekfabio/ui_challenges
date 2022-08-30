import 'package:flutter/material.dart';

class AppStyes {
  static const iconSize = 26.0;
  static const double padding = 24.0;
  static const textSelected = TextStyle(
      fontSize: 14.0, color: AppColors.orange, fontWeight: FontWeight.bold);
  static const textUnselected = TextStyle(
      fontSize: 12.0, color: AppColors.blackGray, fontWeight: FontWeight.w400);
  static const normalText = TextStyle(
      fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w600);
  static const boldText = TextStyle(
      fontSize: 18.0, color: AppColors.black, fontWeight: FontWeight.bold);
}

class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const blackGray = Color.fromARGB(255, 76, 78, 92);
  static const blackLines = Color.fromARGB(137, 0, 0, 0);
  static const orange = Color.fromARGB(240, 241, 169, 0);
  static const blue = Color.fromRGBO(1, 38, 230, 1);
  static const orangeCard = Color.fromRGBO(220, 162, 2, 1);
  static const pink = Color.fromRGBO(203, 65, 64, 1);
}
