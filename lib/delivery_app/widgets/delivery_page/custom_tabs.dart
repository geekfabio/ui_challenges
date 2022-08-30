import 'package:flutter/material.dart';
import 'package:ui_challenges/delivery_app/style.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onPressed;
  const CustomTab({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 100.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // circle container
            isSelected
                ? Container(
                    margin: const EdgeInsets.only(right: 7.0),
                    height: 7.2,
                    width: 7.2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.orange),
                  )
                : Container(),

            // text
            Text(
              text,
              style:
                  isSelected ? AppStyes.textSelected : AppStyes.textUnselected,
            ),
          ],
        ),
      ),
    );
  }
}
