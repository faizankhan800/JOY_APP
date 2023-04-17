import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class SlotWidget extends StatelessWidget {
  const SlotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42.h,
          width: 112.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey)
          ),
          child: Center(child: Text("09:30 AM",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
        ),
        SizedBox(width: 14.w,),
        Container(
          height: 42.h,
          width: 112.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey)
          ),
          child: Center(child: Text("11:30 AM",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
        ),
        SizedBox(width: 14.w,),
        Container(
          height: 42.h,
          width: 112.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.grey)
          ),
          child: Center(child: Text("1:30 PM",style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
        )
      ],
    );
  }
}
