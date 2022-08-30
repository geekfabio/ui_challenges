import 'package:flutter/widgets.dart';

class DeliveryController extends ChangeNotifier {
  //Custom tab selected
  int currentIndex = 0;
  //Page view selected
  int selectedIndex = 0;

  void onPressed(int value) {
    currentIndex = value;
    print(currentIndex);
    notifyListeners();
  }

  void onPageChanged(int value) {
    selectedIndex = value;
    print(selectedIndex);
    notifyListeners();
  }
}
