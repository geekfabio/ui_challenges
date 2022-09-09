import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/work/logo.png",
            width: MediaQuery.of(context).size.width * 0.20,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "PNE - Projeto Nacional \n de Empregabilidade",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
