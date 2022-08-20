import 'package:flutter/material.dart';

import '../travel_model_list.dart';

class ShowCities extends StatelessWidget {
  const ShowCities({
    Key? key,
    required this.padding,
    required this.radius,
    required this.index,
  }) : super(key: key);

  final double padding;
  final double radius;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: padding,
        left: padding,
        right: padding,
        bottom: padding * 2,
      ),
      margin: EdgeInsets.only(
        top: padding * 2,
        right: padding * 2,
        bottom: padding * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        image: DecorationImage(
          image: AssetImage(travels[index].image),
          fit: BoxFit.fill,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2.0,
            blurRadius: 3.0,
            offset: Offset(2.0, 2.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // container: score
          Container(
            height: 20.0,
            width: 48.0,
            decoration: ShapeDecoration(
              shape: const StadiumBorder(),
              color: Colors.white.withOpacity(0.20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // icon: star
                const Icon(
                  Icons.star,
                  size: 12.0,
                  color: Colors.white,
                ),
                Text(
                  travels[index].score,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          // spacer
          const Spacer(),
          // text: title
          Text(
            travels[index].title,
            style: const TextStyle(
              fontSize: 28.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          // text: subTitle
          Row(
            children: <Widget>[
              const Icon(
                Icons.location_on,
                size: 12.0,
                color: Colors.white,
              ),
              const SizedBox(width: 4.0),
              Text(
                travels[index].subTitle,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
