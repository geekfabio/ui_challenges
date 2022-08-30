import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenges/delivery_app/controller/delivery_controller.dart';
import 'package:ui_challenges/delivery_app/widgets/delivery_page/details_text.dart';
import 'package:ui_challenges/delivery_app/widgets/delivery_page/food_card.dart';

import '../../models/product_model.dart';

class InitialPage extends StatelessWidget {
  InitialPage({Key? key}) : super(key: key);

  late DeliveryController _controller;
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.80);
  @override
  Widget build(BuildContext context) {
    _controller = context.watch<DeliveryController>();
    return Column(
      children: <Widget>[
        // container
        Expanded(
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int selectedIndex) {
                _controller.onPageChanged(selectedIndex);
              },
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    FoodCard(index: index),
                    DetailsText(index: index)
                    // bottom text
                  ],
                );
              }),
        ),
      ],
    );
  }
}
