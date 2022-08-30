// https://dribbble.com/shots/8231607-Delivery-App
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenges/delivery_app/style.dart';
import 'package:ui_challenges/delivery_app/widgets/delivery_page/initial_page.dart';

import 'controller/delivery_controller.dart';
import 'widgets/delivery_page/tab_bar_widget.dart';

class DeliveryApp extends StatefulWidget {
  const DeliveryApp({Key? key}) : super(key: key);

  @override
  State<DeliveryApp> createState() => _DeliveryAppState();
}

class _DeliveryAppState extends State<DeliveryApp> {
  late DeliveryController _controller;

  // tabbarview item list
  List<Widget> pages = [];

  double padding = 24.0;

  @override
  Widget build(BuildContext context) {
    // _controller = Provider.of<DeliveryController>(context);
    _controller = context.watch<DeliveryController>();
    _definePages();

    return Scaffold(
      // appbar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52.0),
        child: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.arrowLeft,
                size: AppStyes.iconSize, color: AppColors.black),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.user,
                  size: AppStyes.iconSize, color: AppColors.black),
            ),
          ],
        ),
      ),

      body: Column(
        children: <Widget>[
          // ? tabbar
          const TabBarWidget(),
          // ? tabbarview
          Expanded(
            child: Container(
                color: Colors.white, child: pages[_controller.currentIndex]),
          )
        ],
      ),
    );
  }

  _definePages() {
    pages = [
      // initial pages
      InitialPage(),
      //Next Pages
      Container(color: Colors.indigo),
      Container(color: Colors.yellow),
      InitialPage(),
      Container(color: Colors.pinkAccent),
    ];
  }
}
