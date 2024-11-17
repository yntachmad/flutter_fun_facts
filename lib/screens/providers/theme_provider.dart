import 'dart:ffi';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkModeChecked = false;
  String dataToUpdate = "Hallo World from Global State";

  void updateStringData({required String data}) {
    dataToUpdate = data;
    notifyListeners();
  }

  void updateBoolianData({required bool dataBoolian}) {
    isDarkModeChecked = dataBoolian;
    notifyListeners();
  }
}
