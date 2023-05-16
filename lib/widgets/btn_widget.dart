import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppLayers/Streaming/Overseer.dart';
import '../theme/theme_manager.dart';
ThemeManager _themeManager = ThemeManager();
class BtnWidget extends StatefulWidget {
  const BtnWidget({Key? key}) : super(key: key);

  @override
  State<BtnWidget> createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return  InkWell(
      onTap: (){
        Overseer.theme=!Overseer.theme;
        print('rrr${Overseer.theme}rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

        setState(() {
          _themeManager.toggleTheme(Overseer.theme);

        });


      },
      child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),);
  }
}
