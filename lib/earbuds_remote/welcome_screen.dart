//https://dribbble.com/shots/19140480-earbuds-remote-control-application

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyState {
  final int _counter = 0;
}

class WelcomeScreen extends StatelessWidget implements MyState {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  int _counter = 0;
  @override
  _increment() => _counter++;

  @override
  Widget build(BuildContext context) {
    const String subTitle = "Full control over your oniexpod";
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
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
          // ? Blured background image
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
              ),
            ),
          ),
          //Blured Background circle
          Positioned(
            left: -50,
            bottom: 50,
            child: Stack(
              children: [
                Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.orange,
                          Colors.red,
                          Colors.orange,
                          Colors.red,
                        ],
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 35, sigmaY: 35),
                      child: const SizedBox(),
                    )),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.transparent,
              width: 400,
              height: 300,
              padding: const EdgeInsets.only(
                right: 10,
                left: 2,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Text(
                      _counter.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          color: Color.fromRGBO(4, 13, 37, 1)),
                    ),
                  ),
                  const Spacer(),
                  //Button lets go

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        onPressed: () {
                          _increment();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(3, 23, 55, 1),
                          side: const BorderSide(
                              color: Color.fromRGBO(3, 23, 55, 1)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: const BorderSide(color: Colors.red)),
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Lets Go",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                              size: 18,
                            )
                          ],
                        )),
                  ),
                  // ElevatedButton(
                  //     style: ButtonStyle(
                  //         minimumSize: MaterialStateProperty<Size?>(100, 50)),
                  //     onPressed: () {},
                  //     child: const Text("HELLO"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
