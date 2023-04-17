import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/search_textfield.dart';
import '../pages/Professional Pharmacy/setting_screen.dart';
import '../pages/home/notification_screen.dart';
import '../pages/user_setting/user_setting_screen.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const AppBarWidget({Key? key,required this.subtitle,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             GestureDetector(
                 onTap: (){
                   Get.to(UserSettingScreen());
                 },
                 child: const Icon(Icons.settings,size: 20,)),
            Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
            const Icon(Icons.light_mode_outlined,size: 20,)
          ],
        ),
         SizedBox(height: 45.h,),
        Text(title,
          style: TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
        SizedBox(height: 5.h,),
        Text(subtitle,
          style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 20.h,),
        const SearchTextField(),
      ],
    );
  }
}
