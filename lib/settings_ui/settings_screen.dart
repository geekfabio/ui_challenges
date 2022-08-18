//Finished on 1 Pomodoro

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreenUi extends StatelessWidget {
  const SettingsScreenUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: _AppUtils.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            // ? Top Text
            Container(
              padding: _AppUtils.symetric,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: const Text(
                "Settings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            // ? List Settings
            Expanded(
                child: SizedBox(
              height: 24.0,
              child: SizedBox(
                  height: 100,
                  child: ListView(
                    children: const [
                      _CustomButtonOne(
                        iconData: CupertinoIcons.mail,
                        text: "Email",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.person,
                        text: "User",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.doc,
                        text: "Privacy Policy",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.square_line_vertical_square,
                        text: "Settings",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.info,
                        text: "Support",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.person,
                        text: "User",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.doc,
                        text: "Privacy Policy",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.square_line_vertical_square,
                        text: "Settings",
                      ),
                      _CustomButtonOne(
                        iconData: CupertinoIcons.info,
                        text: "Support",
                      ),
                    ],
                  )),
            ))
          ],
        ),
      )),
    );
  }
}

class _CustomButtonOne extends StatelessWidget {
  const _CustomButtonOne({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 400,
            height: 40,
            decoration: BoxDecoration(
                color: _AppUtils.primary,
                borderRadius: BorderRadius.circular(10)),
            padding: _AppUtils.symetric,
            margin: _AppUtils.symetric,
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 19,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 15,
                  child: Text(
                    text,
                    style: _AppUtils.flatButtonStyle,
                  ),
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class _AppUtils {
  // ! Colors
  static const Color background = Color.fromRGBO(39, 27, 45, 1);
  static const Color red = Color.fromRGBO(182, 86, 90, 1);
  static const Color primary = Color.fromRGBO(50, 40, 60, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  // ! Paddings
  static const symetric = EdgeInsets.symmetric(horizontal: 10.0);
  static const padding = EdgeInsets.all(8.0);
  // ! Button Style
  static TextStyle flatButtonStyle = const TextStyle(
    color: white,
    fontSize: 15,
  );
}
