import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenges/delivery_app/controller/delivery_controller.dart';

import 'my_app.dart';

// ? normal run app
// void main() {
//   runApp( const MyApp());
// }

// ? delivery run app
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DeliveryController(),
      child: const MyApp()));
}
