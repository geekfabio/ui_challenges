import 'package:flutter/material.dart';

enum PowerLevel { low, normal, high, max }

class RatePowerWidget extends StatelessWidget {
  final PowerLevel powerLevel;
  final Color color;
  const RatePowerWidget(
      {Key? key, required this.powerLevel, this.color = Colors.grey})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<int> text = [];
    text = _buildPowerLever(text);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(text.length, (index) {
        return Container(
          width: 4,
          height: 10,
          color: color,
          margin: const EdgeInsets.only(left: 3),
        );
      }),
    );
  }

  List<int> _buildPowerLever(List<int> text) {
    if (powerLevel == PowerLevel.high) {
      text = [1, 2, 3, 4, 5, 6, 7];
    } else if (powerLevel == PowerLevel.max) {
      text = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    } else if (powerLevel == PowerLevel.normal) {
      text = [1, 2, 3, 4, 5];
    } else if (powerLevel == PowerLevel.low) {
      text = [1, 2, 3];
    }
    return text;
  }
}
