import 'package:flutter/material.dart';

import 'travel_model_list.dart';
import 'widgets/costum_top_bar.dart';
import 'widgets/show_cities.dart';

class TravelHomeScreen extends StatefulWidget {
  const TravelHomeScreen({Key? key}) : super(key: key);

  @override
  State<TravelHomeScreen> createState() => _TravelHomeScreenState();
}

class _TravelHomeScreenState extends State<TravelHomeScreen> {
  List<Widget> pages = [];
  // double
  double padding = 16.0;
  double radius = 16.0;
  // string
  String title = "Hello, Trindade";
  final String _profileImage = "assets/images/travel_app/image.jpg";
  String subTitle = "Where are we\n";
  String subTitle1 = "going today?";
  int currentIndex = 0;
  // page view controller
  late PageController _pageController;
  // page view index
  int selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: selectedIndex,
      viewportFraction: 0.7,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    buildWidgetPages();
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //* Style widget
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          //? Selected
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          //? Unselected
          unselectedIconTheme: const IconThemeData(color: Colors.grey),

          //*Function
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ("home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ("search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: ("favorite"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ("notifications"),
            ),
          ],
        ));
  }

  buildWidgetPages() {
    var expanded = Expanded(
      child: PageView.builder(
        itemCount: travels.length,
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        onPageChanged: (int selectedIndex) {
          setState(() {
            selectedIndex = selectedIndex;
          });
        },
        itemBuilder: (context, index) {
          return ShowCities(
            padding: padding,
            radius: radius,
            index: index,
          );
        },
      ),
    );
    pages = [
      // Home Page
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: padding),
              height: 64.0,
              child: CustomTopBar(title: title, profileImage: _profileImage),
            ),
          ),

          // text: title
          _Title(padding: padding, subTitle: subTitle, subTitle1: subTitle1),

          // page view
          expanded,
        ],
      ),

      //Other pages
      Container(color: Colors.teal),
      Container(color: Colors.pink),
      Container(color: Colors.teal),
    ];
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.padding,
    required this.subTitle,
    required this.subTitle1,
  }) : super(key: key);

  final double padding;
  final String subTitle;
  final String subTitle1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: RichText(
        text: TextSpan(
          children: [
            // line 1
            TextSpan(
              text: subTitle,
              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),

            // line 2
            TextSpan(
              text: subTitle1,
              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
