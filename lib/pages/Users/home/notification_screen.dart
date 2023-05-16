import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../widgets/notification_list.dart';
import '../../../widgets/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor:Overseer.theme?AppColors.dimcolor: Colors.white,
        title: Text("Notification",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
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
                    style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),

                ],),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 300.h,
                child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context,index){
                  return NotificationWidget();
                }),
              ),
              SizedBox(height: 25.h,),
              Text("This Week",
                style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 15.h,),
             SizedBox(
               height: 630.h,
               child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
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
