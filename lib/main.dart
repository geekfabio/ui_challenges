import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'delivery_app/controller/delivery_controller.dart';
import 'my_app.dart';

// ? device preview run
// void main() => runApp(ChangeNotifierProvider(
//       create: (context) => DeliveryController(),
//       child: DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => const MyApp(), // Wrap your app
//       ),
//     ));

// ? normal run app
void main() {
  runApp( const MyApp());
}

 // ? delivery run app
// void main() {
//   runApp(ChangeNotifierProvider(
//       create: (context) => DeliveryController(),
//       child: const MyApp()));
// }
