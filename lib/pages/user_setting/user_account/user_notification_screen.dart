import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/colors.dart';
import '../../../widgets/toggle_button1_widget.dart';


class UserNotificationSetting extends StatelessWidget {
  const UserNotificationSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Notification",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
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
                  style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 25.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Show Notifications",
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
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
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
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
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                    // SizedBox(width: 144.w,),
                    ToggleButtonWidget1(),
                  ],
                ),

                SizedBox(height: 36.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Play Notification Sounds",
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
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
