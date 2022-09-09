import 'package:flutter/material.dart';

import 'components/random_user_card.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/App1MainScreen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(27, 27, 29, 1),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      SizedBox(height: 25),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (2).png',
                        userName: 'Rido',
                        opacity: .3,
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (3).png',
                        userName: 'Sulis',
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (5).png',
                        userName: 'John',
                        opacity: .4,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 80),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (6).jpg',
                        userName: 'Jihan',
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (4).png',
                        userName: 'Wohy',
                        opacity: .4,
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (4).png',
                        userName: 'Kenan',
                        opacity: .3,
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (5).png',
                        userName: 'Renan',
                        opacity: .2,
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (1).png',
                        userName: 'Oji',
                      ),
                      CompanyCard(
                        imageUrl: 'assets/images/work/logo (4).png',
                        userName: 'Aly',
                        opacity: .2,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromRGBO(27, 27, 29, 1),
                    const Color.fromARGB(255, 21, 21, 1).withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Find New Friends\nWith Sosmad!',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.white,
                      height: 1.1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'With sosmad then you will find new\nfriends from various countires and\nregions throughout the region',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 180,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 19, 94, 156),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
