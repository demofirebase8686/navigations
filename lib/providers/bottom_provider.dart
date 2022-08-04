

import 'package:flutter/cupertino.dart';

class BottomProvider with ChangeNotifier {


  var currentIndex = 0;


  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
