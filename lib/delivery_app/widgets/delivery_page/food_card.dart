import 'package:flutter/material.dart';
import 'package:ui_challenges/delivery_app/style.dart';

import '../../models/product_model.dart';

class FoodCard extends StatefulWidget {
  const FoodCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: InkWell(
              onTap: () {
                setState(() {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               OrderPage(index)));
                  //
                });
              },
              child: Transform.translate(
                offset: const Offset(-AppStyes.padding, 0.0),
                child: Hero(
                  // hero color tag
                  tag: "color ${widget.index}",
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: AppStyes.padding,
                        right: AppStyes.padding,
                        bottom: AppStyes.padding),
                    padding: const EdgeInsets.all(AppStyes.padding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0),
                      gradient: LinearGradient(
                        colors: [
                          productList[widget.index].color.withOpacity(0.6),
                          productList[widget.index].color.withOpacity(0.8),
                          productList[widget.index].color
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: AppStyes.padding * 2,
            left: 0,
            right: AppStyes.padding * 3,
            bottom: AppStyes.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // tag
                Text(
                  productList[widget.index].tag,
                  style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: AppStyes.padding / 2),
                // title
                Text(
                  productList[widget.index].title,
                  style: const TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                const Spacer(),

                // image
                Hero(
                    tag: "image ${widget.index}",
                    flightShuttleBuilder: (
                      BuildContext flightContext,
                      Animation<double> animation,
                      HeroFlightDirection flightDirection,
                      BuildContext fromHeroContext,
                      BuildContext toHeroContext,
                    ) {
                      Animation<double> newAnimation =
                          Tween<double>(begin: 0, end: 1.2).animate(animation);
                      if (flightDirection == HeroFlightDirection.pop) {
                        newAnimation = ReverseAnimation(newAnimation);
                      }
                      return RotationTransition(
                        turns: newAnimation,
                        child: toHeroContext.widget,
                      );
                    },
                    child: Image.asset(productList[widget.index].image,
                        fit: BoxFit.contain)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
