import 'package:flutter/material.dart';
import 'package:ui_challenges/settings_ui/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

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
      home: const SettingsScreenUi(),
    );
  }
}
