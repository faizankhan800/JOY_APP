import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const TextWidget({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(title,style: TextStyle(color: AppColors.greencolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        Container(
          child:  Text(
            subtitle,
            style: TextStyle(color: AppColors.browncolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        )
      ],
    );
  }
}
