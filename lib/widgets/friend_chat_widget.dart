import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_of_you/AppLayers/Streaming/Overseer.dart';

import '../utils/colors.dart';

class FriendChatWidget extends StatelessWidget {
  const FriendChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w,right: 10.w),
          padding: EdgeInsets.only(left: 10.w,right: 20.w),
          height: 82.h,
          width: 368.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Overseer.theme?AppColors.dimcolor:Colors.white,
              borderRadius: BorderRadius.circular(20.r)
          ),
          child: Row(
            children: [
               CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 30.r,),
              SizedBox(width: 15.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Faizan Khan",style: TextStyle(color:Overseer.theme?Colors.white: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  Text("How are you?",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500))
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("9:18 am",style: TextStyle(color:Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400)),
                  SizedBox(height: 6.h,),
                  CircleAvatar(radius: 10.r,child: Text("1",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500,color: Colors.white),),backgroundColor:Overseer.theme?AppColors.browncolor1:AppColors.secondarycolor)
                ],
              )

            ],
          ),
        ),
        SizedBox(height: 15.h,),
        Container(
          margin: EdgeInsets.only(bottom: 10.h,left: 10.w,right: 10.w),
          padding: EdgeInsets.only(left: 10.w,right: 20.w),
          height: 82.h,
          width: 368.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color:Overseer.theme?AppColors.dimcolor: Colors.white,
              borderRadius: BorderRadius.circular(20.r)
          ),
          child: Row(
            children: [
              CircleAvatar(backgroundImage:const AssetImage("assets/image8.png"),radius: 30.r,),
              SizedBox(width: 15.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Aidaa Bug",style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  Text("Hello",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500))
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("8:23 am",style: TextStyle(color:Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400)),
                  // SizedBox(height: 6.h,),
                  // CircleAvatar(radius: 10.r,child: Text("1",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),),backgroundColor:AppColors.browncolor)
                ],
              )

            ],
          ),
        ),
      ],
    );
  }
}
