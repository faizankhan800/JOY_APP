import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class RegisterWidget extends StatelessWidget {
  final String text;
  final Color color;
  const RegisterWidget({Key? key,required this.text,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      width: 308.w,
      height: 50.h,
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(20.r)
      ),
      child: Center(
        child: Text(text,
          style:  TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
      ),

    );
  }
}
