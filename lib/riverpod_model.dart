import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  bool isLight = true;
  RiverpodModel({required this.isLight});
  void toggleTheme() {
    isLight = !isLight;
    notifyListeners();
  }
}
