import 'package:flutter/material.dart';

import 'delivery_app/delivery_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: DeliveryApp(),
      //home: WelcomeScreen(),
      //home: SettingsScreenUi(),

      home: const DeliveryApp(),
    );
  }
}
