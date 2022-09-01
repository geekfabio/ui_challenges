import 'package:flutter/material.dart';
import 'package:ui_challenges/pokemon_ui/pokemon_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: WelcomeScreen(),
      //home: SettingsScreenUi(),
      //home: const DeliveryApp(),
      home: const PokemonPage(),
    );
  }
}
