import 'package:flutter/material.dart';

import 'my_app.dart';

// ? device preview run
// void main() => runApp(DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => const MyApp(), // Wrap your app
//     ));

// ? normal run app
void main() {
  runApp(const MyApp());
}



 // ? delivery run app
// void main() {
//   runApp(ChangeNotifierProvider(
//       create: (context) => DeliveryController(),
//       child: const MyApp()));
// }
