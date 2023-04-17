import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../widgets/notification_list.dart';
import '../../widgets/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Notification",style: TextStyle(color: AppColors.blackcolor,
            fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Today",
                    style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  Text("See All",
                    style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)
                ],),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,index){
                  return NotificationWidget();
                }),
              ),
              SizedBox(height: 25.h,),
              Text("This Week",
                style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 15.h,),
             SizedBox(
               height: 300.h,
               child: ListView.builder(
                 itemCount: 5,
                   itemBuilder: (context,index){
                 return  NotificationList();
               }),
             )







            ],
          ),
        ),
      ),

    );
  }
}
