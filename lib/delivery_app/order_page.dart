import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenges/delivery_app/style.dart';
import 'package:ui_challenges/delivery_app/your_order_page.dart';

import 'models/product_model.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // total price
  int itemCount = 1;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height * 0.30,
            left: 0,
            right: 0,
            bottom: 0,
            child: Hero(
              tag: "color ${widget.index}",
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  gradient: LinearGradient(
                    colors: [
                      fruitList[widget.index].color.withOpacity(0.7),
                      fruitList[widget.index].color.withOpacity(0.9),
                      fruitList[widget.index].color
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 48.0,
            left: 0,
            right: 0,
            child: Hero(
                tag: "image ${widget.index}",
                child: Image.asset(
                  fruitList[widget.index].image,
                  fit: BoxFit.contain,
                  height: 280.0,
                  width: 50,
                )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.50,
            left: 0,
            right: 0,
            bottom: AppStyes.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // title
                Text(
                  fruitList[widget.index].title,
                  style: const TextStyle(
                      fontSize: 28.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),

                // ? Price
                Container(
                  height: 40.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "\$",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        (10 * itemCount).toString(),
                        style: const TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 45.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (itemCount > 1) {
                                  itemCount--;
                                }
                              });
                            },
                            icon: const Icon(Icons.remove,
                                size: AppStyes.iconSize,
                                color: AppColors.black),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            itemCount.toString(),
                            style: const TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                itemCount++;
                              });
                            },
                            icon: const Icon(Icons.add,
                                size: 28.0, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ? Button order
                Container(
                    height: 48.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: AppColors.blue),
                    child: ElevatedButton(
                      style:
                          TextButton.styleFrom(backgroundColor: AppColors.blue),
                      child: const Center(
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      onPressed: () {
                        print(widget.index);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    YourOrderPage(widget.index)));
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
