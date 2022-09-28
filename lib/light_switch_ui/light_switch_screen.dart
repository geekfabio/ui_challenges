import 'package:flutter/material.dart';

class LightSwitchScreen extends StatefulWidget {
  const LightSwitchScreen({super.key});

  @override
  State<LightSwitchScreen> createState() => _LightSwitchScreenState();
}

class _LightSwitchScreenState extends State<LightSwitchScreen>
    with TickerProviderStateMixin {
  //Animate color on Switch value changed
  late AnimationController animationController;
  late Animation<double> horizontalAnimation;

  @override
  void initState() {
    super.initState();

    //Animate color on Switch value changed
    animationController = AnimationController(
        duration: const Duration(milliseconds: 750), vsync: this);

    horizontalAnimation = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.0, 1.000, curve: Curves.fastLinearToSlowEaseIn),
    );

    animationController
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reset();
        }
      })
      ..addListener(() {
        if (animationController.value == 1.000 || isSelected) {
          isSelected ? _switchOn() : _switchOff();
        }
      });
  }

  Color _backgroundColor = Colors.black87;
  Color _textColor = Colors.white;
  Color _switchColor = Colors.black;

  double padding = 16.0;
  double paddingBtn = 6.0;

  double positionY = 6.0;
  bool isSelected = false;

  void _onPressed() {
    setState(() {
      isSelected = !isSelected;
      Future.delayed(const Duration(milliseconds: 1), () {
        isSelected ? _switchOn() : _switchOff();
      });
      animationController.forward();
      print("FINISH>>$isSelected");
    });
  }

  void _switchOn() {
    setState(() {
      positionY = 150.0 - (50.0 - paddingBtn * 2) - paddingBtn;

      // set color
      _backgroundColor = Colors.amber;
      _textColor = Colors.black;
      _switchColor = Colors.grey.withOpacity(0.5);
    });
  }

  void _switchOff() {
    setState(() {
      positionY = paddingBtn;

      // set color
      _backgroundColor = Colors.black;
      _textColor = Colors.white;
      _switchColor = const Color.fromARGB(255, 65, 65, 65);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
            // appbar
            IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, size: 24.0, color: _textColor),
        ),
        centerTitle: true,
        title: const Text("Study Room"),
      ),
      body: Stack(
        children: <Widget>[
          //TODO create transition on change background color
          //start on bottom to top, Animate color on Switch value changed
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Stack(
          //     children: const <Widget>[],
          //   ),
          // ),

          // background color
          Positioned.fill(
            child: AnimatedContainer(
              color: _backgroundColor,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),

          Positioned(
            top: 0,
            right: padding,
            child: SizedBox(
              height: screenHeight * 0.70,
              width: 50.0,
              child: Stack(
                children: <Widget>[
                  //Line Container
                  Positioned(
                    top: 0,
                    left: (50.0 - 2.0) / 2,
                    right: (50.0 - 2.0) / 2,
                    bottom: paddingBtn,
                    child: const ColoredBox(
                      color: Colors.white,
                    ),
                  ),

                  // switch
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        _onPressed();
                      },
                      //When changed color then add animation
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastOutSlowIn,
                        height: 150.0,
                        decoration: ShapeDecoration(
                          shape: const StadiumBorder(),
                          color: _switchColor,
                        ),
                        child: Stack(
                          children: <Widget>[
                            // button in Switch
                            // add animation
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.fastOutSlowIn,
                              top: positionY,
                              left: paddingBtn,
                              right: paddingBtn,
                              child: Container(
                                height: 50.0 - paddingBtn * 2,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
