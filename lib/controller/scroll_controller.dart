import 'package:flutter/material.dart';

class ScrollerController extends ChangeNotifier {
  var position = 0;

  void getScroll(int index) {
    position = index;
    notifyListeners();
  }

  var nav_position = 0;

  void getNavPosition(int index) {
    nav_position = index;
    notifyListeners();
  }

  bool favourite = false;
  void isFavourite() {
    favourite = !favourite;
    notifyListeners();
  }

  int count = 1;

  void incrementOrDecrementProduct(int num) {
    if (num == 1) {
      if (count > 1) {
        count--;
        notifyListeners();
      }
    }
    if (num == 2) {
      count++;
      notifyListeners();
    }
  }

  bool expand = false;

  void isExpanded() {
    expand = !expand;
    notifyListeners();
  }
}
