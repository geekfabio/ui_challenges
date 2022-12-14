import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenges/light_switch_ui/light_switch_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'UI Challenges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: WelcomeScreen(),
      //home: SettingsScreenUi(),
      // home: const PokemonPage(),
      //home: const WelcomeScreen(), // Work App
      home: const LightSwitchScreen(),
    );
  }
}
