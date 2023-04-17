import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class LoginOptionWidget extends StatelessWidget {
  final String text;
  final Color color;
  final String title;
  final String subtitle;
  final String image;
  const LoginOptionWidget({Key? key,required this.text,required this.color,required this.title,required this.subtitle ,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      width: 368.w,
      height: 119.h,
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(20.r)
      ),
      child:Padding(
        padding:  EdgeInsets.only(top: 32.h,bottom: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(image,height: 120.h,width: 122.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                SizedBox(height: 5.h,),
                Text(subtitle,style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              ],
            )
          ],
        ),
      )

    );
  }
}
