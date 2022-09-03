import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TagWeakness extends StatelessWidget {
  final Color borderIconColor;
  final Color backgroundIconColor;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final IconData icon;
  final double width;

  const TagWeakness({
    Key? key,
    required this.borderIconColor,
    required this.backgroundIconColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
    required this.icon,
    this.width = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 22,
        decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.5),
            border: Border.all(color: borderColor.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  color: backgroundIconColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderIconColor.withOpacity(0.5)),
                  shape: BoxShape.rectangle),
              child: const Icon(
                FontAwesomeIcons.firefoxBrowser,
                color: Colors.white,
                size: 5,
              ),
            ),
            const SizedBox(
              width: 3.5,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}
