import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkModeChecked = false;
  String dataToUpdate = "Hallo World from Global State";

  void updateStringData({required String data}) {
    dataToUpdate = data;
    notifyListeners();
  }

  Future<void> updateBoolianData({required bool dataBoolian}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkModeChecked', dataBoolian);
    isDarkModeChecked = dataBoolian;
    notifyListeners();
  }

  void LoadMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkModeChecked = prefs.getBool('isDarkModeChecked') ?? true;
    notifyListeners();
  }
}
