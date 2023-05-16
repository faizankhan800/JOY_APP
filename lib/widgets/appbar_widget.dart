import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/search_textfield.dart';
import 'package:journey_of_you/widgets/toggle_button1_widget.dart';
import 'package:provider/provider.dart';
import '../AppLayers/Streaming/Overseer.dart';
import '../main.dart';
import '../pages/Users/user_setting/user_setting_screen.dart';
import '../theme/theme_manager.dart';

class AppBarWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  Widget? btn;
  ValueChanged<bool>? onChanged;
  bool? value;


   AppBarWidget({Key? key,required this.subtitle,required this.title,this.onChanged,this.value,this.btn}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
             child:  Icon(Icons.settings,size: 20,color:Overseer.theme?Colors.white:AppColors.blackcolor)),
        Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
        widget.btn??SizedBox(),

      ],
    ),
     SizedBox(height: 45.h,),
    Text(widget.title,
      style: TextStyle(color:Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
    SizedBox(height: 5.h,),
    Text(widget.subtitle,
      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
    SizedBox(height: 20.h,),
     SearchTextField(),
    ],
    );
  }
}
