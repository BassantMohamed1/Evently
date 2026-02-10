import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocale = "en";

  void changeTheme(){
    if(currentTheme == ThemeMode.light){
      currentTheme = ThemeMode.dark;
    }else{
      currentTheme = ThemeMode.light;
    }
    notifyListeners();
  }

  void changeLocale(){
    if(currentLocale == "en"){
      currentLocale = "ar";
    }else{
      currentLocale = "en";
    }
    notifyListeners();
  }
}