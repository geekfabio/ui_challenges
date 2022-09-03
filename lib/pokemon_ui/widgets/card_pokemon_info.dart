import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenges/pokemon_ui/widgets/rate_power_widget.dart';
import 'package:ui_challenges/pokemon_ui/widgets/tag_wekeness.dart';

import '../style.dart';

class CardPokemonInfo extends StatelessWidget {
  const CardPokemonInfo({
    Key? key,
    required this.screenSize,
    required this.weightPokemon,
  }) : super(key: key);

  final Size screenSize;
  final String weightPokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
          padding:
              const EdgeInsets.only(top: 10.0, left: 15, right: 15, bottom: 10),
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
                          color: AppColors.primaryBlue, shape: BoxShape.circle),
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
                children: [
                  SizedBox(
                    //TODO add model here
                    width: 75 + weightPokemon.length.toDouble(),
                    child: const Text(
                      "Peso",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    "Elemento",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Altura",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              // ? Spacer
              const SizedBox(
                height: 5,
              ),

              //Row Spacer
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Ataques",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                              color: AppColors.primaryBlue,
                              shape: BoxShape.circle),
                          child: const Icon(
                            FontAwesomeIcons.droplet,
                            color: Colors.white,
                            size: 8,
                          )),
                      const Text(" Revolver de Agua",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      const Spacer(),
                      const RatePowerWidget(
                        powerLevel: PowerLevel.max,
                        color: Color.fromARGB(255, 17, 12, 66),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 18,
                          height: 18,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 28, 61, 29),
                              shape: BoxShape.circle),
                          child: const Icon(
                            FontAwesomeIcons.circle,
                            color: Colors.white,
                            size: 8,
                          )),
                      const Text(" Canhão Flash",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      const Spacer(),
                      const RatePowerWidget(
                        powerLevel: PowerLevel.high,
                        color: Color.fromARGB(255, 17, 12, 66),
                      ),
                    ],
                  )
                ],
              ),
              // ? Spacer
              const SizedBox(
                height: 6,
              ),
              // Header Fraquezas
              SizedBox(
                height: 45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Fraquezas",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TagWeakness(
                          text: "Grama",
                          icon: Icons.electrical_services_rounded,
                          backgroundColor: Color.fromARGB(255, 28, 61, 29),
                          borderColor: Colors.green,
                          borderIconColor: Colors.green,
                          backgroundIconColor: Color.fromARGB(255, 40, 170, 44),
                          width: 80,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        TagWeakness(
                          text: "Eletrecidade",
                          icon: Icons.electrical_services_rounded,
                          backgroundColor: Colors.yellow,
                          borderColor: Colors.white,
                          borderIconColor: Colors.yellowAccent,
                          backgroundIconColor: Colors.yellow,
                          width: 100,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
