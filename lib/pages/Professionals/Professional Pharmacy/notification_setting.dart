import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../utils/colors.dart';
import '../../../widgets/toggle_button1_widget.dart';
import 'Edit Profile/_pharmacy_edit_profile.dart';

class Notification_Setting extends StatelessWidget {
  const Notification_Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor:  Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Notification",style: TextStyle(color: Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.only(top: 30.h,right: 30.w,left: 30.w),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 11.h,),
          Text("Notification Setting",
            style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
          SizedBox(height: 25.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Show Notifications",
              style: TextStyle(color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
            // SizedBox(width: 192.w,),
            ToggleButtonWidget1(),
          ],
        ),
        SizedBox(height: 20.h,),
        Divider(),
        SizedBox(height: 30.h,),
        Text("Notifications Badges",
        style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Allow Notifications Badges",
                style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              // SizedBox(width: 145.w,),
              ToggleButtonWidget1(),
            ],
          ),

          SizedBox(height: 25.h,),
        Text("Floating Notifications",
        style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Allow Floating Notifications",
                style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              // SizedBox(width: 144.w,),
              ToggleButtonWidget1(),
            ],
          ),

          SizedBox(height: 36.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Play Notification Sounds",
                style: TextStyle(color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              // SizedBox(width: 160.w,),
              ToggleButtonWidget1(),
            ],
          ),
        ]
        ),
      ),
      ),
    );
  }
}
