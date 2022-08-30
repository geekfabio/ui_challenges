import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenges/delivery_app/style.dart';

import '../../controller/delivery_controller.dart';
import '../../models/product_model.dart';

class DetailsText extends StatelessWidget {
  DetailsText({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  late DeliveryController _controller;
  @override
  Widget build(BuildContext context) {
    _controller = context.watch<DeliveryController>();

    return Container(
      margin: const EdgeInsets.only(
          right: AppStyes.padding * 2, bottom: AppStyes.padding * 2),
      height: 100.0,
      child: _controller.selectedIndex == index
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        productList[_controller.selectedIndex].market,
                        style: AppStyes.boldText,
                      ),
                      const Spacer(),
                      const Icon(FontAwesomeIcons.clock,
                          size: 14.0, color: Colors.black),
                      const SizedBox(width: 4.0),
                      Text(
                        productList[index].distance,
                        style: AppStyes.normalText,
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1.0, color: AppColors.blackLines),
                const Expanded(
                  child: Text(
                    "Calories :",
                    style: AppStyes.normalText,
                  ),
                ),
                const Divider(height: 1.0, color: AppColors.blackLines),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Text(
                        productList[_controller.selectedIndex].grams,
                        style: AppStyes.normalText,
                      ),
                      const Spacer(),
                      Text(
                        productList[_controller.selectedIndex].kcal,
                        style: AppStyes.normalText,
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
