import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenges/delivery_app/controller/delivery_controller.dart';
import 'package:ui_challenges/delivery_app/widgets/delivery_page/custom_tabs.dart';

class ViewTabBarWidget extends StatefulWidget {
  const ViewTabBarWidget({Key? key}) : super(key: key);

  @override
  State<ViewTabBarWidget> createState() => _ViewTabBarWidgetState();
}

class _ViewTabBarWidgetState extends State<ViewTabBarWidget> {
  late DeliveryController _controller;
  @override
  Widget build(BuildContext context) {
    _controller = context.watch<DeliveryController>();
    return Container(
      height: 52.0,
      color: Colors.white,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          CustomTab(
            text: "Fruits",
            isSelected: _controller.currentIndex == 0,
            onPressed: () {
              setState(() {
                _controller.onPressed(0);
              });
            },
          ),
          CustomTab(
            text: "Vegetables",
            isSelected: _controller.currentIndex == 1,
            onPressed: () {
              setState(() {
                _controller.onPressed(1);
              });
            },
          ),
          CustomTab(
            text: "Coffees",
            isSelected: _controller.currentIndex == 2,
            onPressed: () {
              setState(() {
                _controller.onPressed(2);
              });
            },
          ),
          CustomTab(
            text: "IceCreams",
            isSelected: _controller.currentIndex == 3,
            onPressed: () {
              setState(() {
                _controller.onPressed(3);
              });
            },
          ),
          CustomTab(
            text: "Coffees",
            isSelected: _controller.currentIndex == 4,
            onPressed: () {
              setState(() {
                _controller.onPressed(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
