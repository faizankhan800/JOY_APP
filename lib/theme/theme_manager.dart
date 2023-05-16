import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppLayers/Streaming/Overseer.dart';

class ThemeManager with ChangeNotifier{

  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark){
    print(isDark);
   // Overseer.theme=!isDark;

    _themeMode = isDark?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
    print(Overseer.theme);
  }

}