import 'package:flutter/material.dart';
import 'package:ui_challenges/delivery_app/style.dart';

import 'models/product_model.dart';

class YourOrderPage extends StatefulWidget {
  final int index;

  const YourOrderPage(this.index);

  @override
  _YourOrderPageState createState() => _YourOrderPageState();
}

class _YourOrderPageState extends State<YourOrderPage> {
  double padding = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Center(
              child: Image.asset("assets/images/delivery/boy.gif",
                  fit: BoxFit.contain),
            ),
          ),
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Hero(
                  tag: "color ${widget.index}",
                  child: Container(
                    padding: EdgeInsets.all(padding),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      gradient: LinearGradient(
                        colors: [
                          fruitList[widget.index].color.withOpacity(0.6),
                          fruitList[widget.index].color.withOpacity(0.7),
                          fruitList[widget.index].color
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: padding,
                  left: 0,
                  right: 0,
                  bottom: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //
                      const Text(
                        "Your Order",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const Text(
                        "On The Way",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const Spacer(),

                      const Text(
                        "#78376",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const Text(
                        "Order Number",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const Spacer(),

                      Container(
                          height: 48.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.blue),
                          child: ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: AppColors.blue),
                            child: const Center(
                              child: Text(
                                "Check The Recipe",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
