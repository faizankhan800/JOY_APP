import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String img;
  final String text;
  const PaymentMethodWidget({Key? key,required this.text,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.only(left: 25.w,right: 25.w),
      height: 60.h,
      width: 328.w,
      decoration: BoxDecoration(
          color: AppColors.lightcolor,
          borderRadius: BorderRadius.circular(10.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(img),
          Text(text,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400
            ),),
          Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 2.w)
            ),
          )

        ],
      ),
    );
  }
}
