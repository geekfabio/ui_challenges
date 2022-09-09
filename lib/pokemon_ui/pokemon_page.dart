import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenges/pokemon_ui/style.dart';
import 'package:ui_challenges/pokemon_ui/widgets/card_pokemon_info.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    //Testing
    String weightPokemon = "123.05kg";

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
          child: Stack(alignment: Alignment.center, children: [
            // ? Main image
            Positioned(
              top: 40,
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/images/pokemon/Blastoise.webp"),
              ),
            ),
            Positioned(
              bottom: 0.5,
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
              child: CardPokemonInfo(
                  screenSize: screenSize, weightPokemon: weightPokemon),
            ),
          ]),
        ),
      ),
    );
  }
}
