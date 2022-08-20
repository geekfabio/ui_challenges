//https://dribbble.com/shots/19140480-earbuds-remote-control-application

import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/earbuds/logo.png",
              width: 25,
              height: 25,
            ),
            //Image.asset("assets/images/earbuds/logo.png"),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Onipod",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(4, 13, 37, 1)),
            )
          ],
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            right: -20,
            child: Transform.rotate(
              angle: 150,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/earbuds/single.png",
                    ),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 3),
                  child: DecoratedBox(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
