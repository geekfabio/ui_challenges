//Finished on 1 Pomodoro

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreenUi extends StatelessWidget {
  const SettingsScreenUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _AppUtils.background,
      body: SafeArea(
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
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
              child: ListView(
            padding: const EdgeInsets.all(5.0),
            children: [
              SettingsButton(
                iconData: Icons.accessibility,
                text: "accessibility",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.person,
                text: "Person",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.settings,
                text: "Settings",
                onTap: () {},
              ),
              SettingsButton(
                  iconData: Icons.search, text: "Search", onTap: () {}),
              SettingsButton(
                iconData: Icons.account_balance,
                text: "Account Balance",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.document_scanner,
                text: "Documents",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.accessibility,
                text: "accessibility",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.accessibility,
                text: "accessibility",
                onTap: () {},
              ),
              SettingsButton(
                iconData: Icons.accessibility,
                text: "accessibility",
                onTap: () {},
              ),
            ],
          ))
        ],
      )),
    );
  }
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
    required this.iconData,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: onTap,
        child: Container(
          width: 400,
          height: 40,
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: _AppUtils.primary,
              borderRadius: BorderRadius.circular(10)),
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
    ]);
  }
}

class _AppUtils {
  // ! Colors
  static const Color background = Color.fromRGBO(39, 27, 45, 1);
  static const Color primary = Color.fromRGBO(50, 40, 60, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  // ! Paddings
  static const symetric = EdgeInsets.symmetric(horizontal: 10.0);
  // ! Button Style
  static TextStyle flatButtonStyle = const TextStyle(
    color: white,
    fontSize: 15,
  );
}
