import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../AppLayers/Streaming/Overseer.dart';
import '../main.dart';
import '../pages/Users/user_setting/user_setting_screen.dart';
import '../theme/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

class BarWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  
  const BarWidget({Key? key, required this.title,required this.subtitle}) : super(key: key);

  @override
  State<BarWidget> createState() => _BarWidgetState();
}

class _BarWidgetState extends State<BarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: (){
                  Get.to(const UserSettingScreen());
                },
                child:  Icon(Icons.settings,size: 20,color: Overseer.theme?Colors.white:Colors.black,)),
            Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
            InkWell(
              onTap: (){
                Overseer.theme=!Overseer.theme;
                print('rrr${Overseer.theme}rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

                setState(() {
                  _themeManager.toggleTheme(Overseer.theme);

                });


              },
              child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)
          ],
        ),
          SizedBox(height: 45.h,),
          Text(widget.title,style: TextStyle(color: Overseer.theme?Colors.white:Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w600),),
          Text(widget.subtitle,style: TextStyle(color:Overseer.theme?Colors.white: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
      ],
    );

  }
}
