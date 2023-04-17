
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback  onTap;
  const CustomButton({Key? key,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
          width: 368.w,
          height: 50.h,
          decoration: BoxDecoration(
              gradient: AppColors.Gardient(),
              borderRadius: BorderRadius.circular(15.r)
          ),
          child: Center(child:Text(text,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),) ,)
      ),
    );
  }
}
