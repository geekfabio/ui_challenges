import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenges/pokemon_ui/style.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var extraHeight = 0.1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.star,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.topBlue,
              AppColors.centerBlue,
              AppColors.primaryBlue
            ])),
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(children: [
            // ? Main image
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/images/pokemon/Blastoise.webp"),
              ),
            ),
            Positioned(
              bottom: 0.5,
              left: 12,
              child: Transform.rotate(
                angle: 300,
                alignment: Alignment.centerLeft,
                child: Text(
                  "BLASTOISE",
                  style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.w900,
                  ).copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..color = Colors.white.withOpacity(0.3)
                      ..strokeWidth = 1,
                  ),
                ),
              ),
            ),
            // ? Letter Main center
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                height: 50,
                child: const Text("Blastoise",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w600)),
              ),
            ),

            // ? Card
            Align(
              alignment: Alignment.bottomCenter,
              child: Placeholder(
                fallbackHeight: 300,
                color: Colors.yellow,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  width: screenSize.width,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.12),
                  ),
                  child: ClipRect(
                      child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          //? Row header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("123.05kg",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                              Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                      color: AppColors.primaryBlue,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    FontAwesomeIcons.droplet,
                                    color: Colors.white,
                                    size: 15,
                                  )),
                              const Text(
                                "2m",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ), //? Row Header Elementes
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Peso",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Elemento",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Altura",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          // ? Row elementes
                          const SizedBox(
                            height: 10,
                          ),

                          //Row Spacer
                          const SizedBox(
                            height: 20,
                            child: Placeholder(
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
