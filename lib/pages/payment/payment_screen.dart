import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../home/home_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Padding(
        padding: EdgeInsets.only(left: 30.w,right: 30.w,top: 150.h),
        child: Column(
          children: [
            Image.asset("assets/image23.png"),
            SizedBox(height: 70.h,),
            Text("Order Placed",
              style: TextStyle(
                  color: AppColors.blackcolor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600
              ),),
            SizedBox(height: 15.h,),
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400
              ),),
            SizedBox(height: 76.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                    child: Center(
                      child: Text("Back to Home",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                ),
                Container(
                    height: 45.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        gradient: AppColors.Gardient3(),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Center(
                      child: Text("Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    )
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
