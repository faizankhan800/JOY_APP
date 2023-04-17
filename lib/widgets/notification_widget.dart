import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10.w,right: 10.w,top: 5.h,bottom: 10.h),
          height: 80.h,
          width: 370.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 8,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r)
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 10.h,
                width: 10.w,
                decoration: const BoxDecoration(
                    color: AppColors.browncolor,
                    shape: BoxShape.circle
                ),
              ),
              SizedBox(width: 15.w,),
              CircleAvatar(backgroundImage:const AssetImage("assets/image5.png"),radius: 30.r,),
              SizedBox(width: 15.w,),
              Text("You Received a Friend Request from\n Aidda Bugg.",
                style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)

            ],
          ),
        ),
        // SizedBox(height: 15.h,),
        Container(
          margin: EdgeInsets.only(bottom: 10.h,top: 5.h,left: 10.w,right: 10.w),
          height: 100.h,
          width: 368.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.w),
                height: 10.h,
                width: 10.w,
                decoration: const BoxDecoration(
                    color: AppColors.browncolor,
                    shape: BoxShape.circle
                ),
              ),
              SizedBox(width: 15.w,),
              CircleAvatar(backgroundImage:const AssetImage("assets/image5.png"),radius: 30.r,),
              SizedBox(width: 15.w,),
              Text("Faizan Khan Shared a\nStory.",
                style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              SizedBox(width: 50.w,),
              // SvgPicture.asset('assets/abc.svg',height: 70.h,width: 53.w,)
              Image.asset("assets/image6.png")

            ],
          ),
        )

      ],
    );


  }
}
