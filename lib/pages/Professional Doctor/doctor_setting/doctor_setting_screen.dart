import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/user_setting/user_account/user_account_screen.dart';

import '../auth/login_screen.dart';
import 'doctor_account_screen.dart';
import 'doctor_notification_screen.dart';
import 'doctor_password_screen.dart';

class DoctorSettingScreen extends StatelessWidget {
  const DoctorSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Setting",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h,left: 25.w,right: 25.w),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(const DoctorAccountScreen());
              },
              child: Container(height: 60.h,width: 378.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/pic6.png'),
                          SizedBox(width: 25.w,),
                          Text("Account",
                            style: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Get.to(DoctorNotificationSetting());
              },
              child: Container(height: 60.h,width: 378.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/pic5.png'),
                          SizedBox(width: 25.w,),
                          Text("Notification",
                            style: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            GestureDetector(
              onTap: (){
                Get.to(DoctorLoginScreen());
              },
              child: Container(height: 60.h,width: 378.w,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/pic4.png'),
                          SizedBox(width: 25.w,),
                          Text("Logout",
                            style: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,)


                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}