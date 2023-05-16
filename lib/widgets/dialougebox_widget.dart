import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../AppLayers/Streaming/Overseer.dart';
import '../pages/Users/payment/payment_screen.dart';
import '../utils/colors.dart';

void AlertBox(BuildContext context) {
  List payment=['Credit Card','PayPal','Easypaisa'];
List url=['assets/image20.png','assets/image21.png','assets/image22.png'];
int position=0;
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder:(BuildContext context, StateSetter setState){return Dialog(
          elevation: 0,
          backgroundColor: Overseer.theme?AppColors.dimcolor:AppColors.bgcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r)),
          child: Container(
            height: 443.h,
            width: 378.w,
            child: Padding(
              padding:  EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Methods",
                    style: TextStyle(
                        color: Overseer.theme?Colors.white:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(height: 5.h,),
                  Text("Select a payment method to continue.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 25.h,),


                  SizedBox(
                    height: 200.h,
                    // width: 300.w,
                    child: ListView.separated(itemBuilder: (context, index) {
                      bool isSelect=(index == position);
                      return InkWell(
                        onTap: (){
 setState(() {
        position=index;
        });

                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10.h),
                          padding: EdgeInsets.only(left: 25.w,right: 25.w),
                          height: 60.h,
                          width: 328.w,
                          decoration: BoxDecoration(
                              color:Overseer.theme?AppColors.blackcolor: AppColors.lightcolor,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(url[index]
                              ),
                              Text(payment[index],
                                style: TextStyle(
                                    color: isSelect?Colors.deepOrange: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400
                                ),),
                              Checkbox(
                                checkColor: Colors.grey,
                                activeColor: Overseer.theme?AppColors.darkonecolor:Colors.red,
                                shape: CircleBorder(),
                                value: isSelect,
                                onChanged: ( value) {
                                  setState(() {
                                    isSelect = value!;
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                      );} , separatorBuilder: (context, index) => SizedBox(), itemCount: payment.length),
                  ),
                  // PaymentMethodWidget(text: 'Credit Card', img: 'assets/image20.png',),
                  // PaymentMethodWidget(text: 'PayPal', img: 'assets/image21.png',),
                  // PaymentMethodWidget(text: 'Easypaisa', img: 'assets/image22.png',),
                  SizedBox(height: 50.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){Get.back();},
                        child: Container(
                            height: 41.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            child: Center(
                              child: Text("Cancel",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            )),
                      ),
                      SizedBox(width: 20.w,),
                      GestureDetector(
                        onTap: (){
                          Get.to(const PaymentScreen());
                        },
                        child: Container(
                            height: 41.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                gradient:Overseer.theme?AppColors.GardientD1(): AppColors.Gardient3(),
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            child: Center(
                              child: Text("Pay Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            )),
                      )
                    ],
                  )

                ],
              ),
            ),

          ),
        );},
      );
    },
  );
}