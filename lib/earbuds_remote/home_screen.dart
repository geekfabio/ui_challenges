//https://dribbble.com/shots/19140480-earbuds-remote-control-application

import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    ValueNotifier<double>? valueNotifier = ValueNotifier<double>(40.0);
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
              //color: Colors.black,
              height: screenSize.height,
              width: screenSize.width,
              child: ListView(
                children: [
                  const Divider(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        width: 150,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.center,
                            child: SimpleCircularProgressBar(
                              progressColors: const [
                                Color.fromRGBO(244, 154, 17, 1)
                              ],
                              backColor: const Color.fromRGBO(255, 235, 203, 1),
                              fullProgressColor:
                                  const Color.fromRGBO(22, 94, 222, 1),
                              progressStrokeWidth: 10,
                              backStrokeWidth: 10,
                              startAngle: 180,
                              valueNotifier: valueNotifier,
                              onGetText: (double value) {
                                return const Text(
                                  '60% \n Baterry',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 4, 44, 77)),
                                );
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 20,
                            left: 20,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              width: 55,
                              height: 55,
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            right: 0,
                            left: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 235, 203, 1),
                              ),
                              width: 40,
                              height: 40,
                              child: const Icon(
                                Icons.save,
                                color: Color.fromRGBO(244, 154, 17, 1),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  )
                ],
              ))),
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 206, 37, 37).withOpacity(0.5),
        actions: const [Icon(Icons.arrow_back), Icon(Icons.arrow_back)],
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
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: const Color.fromARGB(255, 56, 70, 82),
          selectedItemColor: const Color.fromARGB(255, 11, 42, 68),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
          ]),
    );
  }
}
