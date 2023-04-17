import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class ServicesWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;
  final String bgimage;


  const ServicesWidget({Key? key,required this.title,required this.subtitle,required this.image,required this.color,required this.bgimage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 174.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(bgimage)
        ),
          color: color,
          borderRadius: BorderRadius.circular(10.r)
      ),
      child: Padding(
        padding:  EdgeInsets.only(left: 17.w,top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,color: Colors.white,height: 25.h,width: 25.w,),
            SizedBox(height: 25.h,),
            Text(title,
              style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),
            SizedBox(height: 5.h,),
            Text(subtitle,
              style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
