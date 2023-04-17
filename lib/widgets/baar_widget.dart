import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../pages/user_setting/user_setting_screen.dart';

class BarWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  
  const BarWidget({Key? key, required this.title,required this.subtitle}) : super(key: key);

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
                  Get.to(const UserSettingScreen());
                },
                child: const Icon(Icons.settings,size: 20,)),
            Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
            const Icon(Icons.light_mode_outlined,size: 20,)
          ],
        ),
          SizedBox(height: 45.h,),
          Text(title,style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w600),),
          Text(subtitle,style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
      ],
    );
  }
}
