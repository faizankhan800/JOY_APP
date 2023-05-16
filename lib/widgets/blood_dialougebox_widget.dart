import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../AppLayers/Streaming/Overseer.dart';
import '../utils/colors.dart';

void BloodAlertBox(BuildContext context) {
  int position=0;
  showDialog(
    context: context,
    builder: (BuildContext context) {


      return StatefulBuilder(
        builder:(context,setstate)=> Dialog(
          elevation: 0,
          backgroundColor: Overseer.theme?AppColors.dimcolor:AppColors.bgcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r)),
          child: Container(
            height: 372.h,
            width: 450.w,
            child: Padding(
              padding:  EdgeInsets.only(top: 25.h,left: 25.w,right: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Blood Group",
                    style: TextStyle(
                        color: Overseer.theme?Colors.white:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),),
                  SizedBox(height: 5.h,),
                  Text("Please Choose your Blood Group",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500
                    ),),
                SizedBox(height: 40.h,),
                  SizedBox(
                    height: 160.h,
                    child: GridView.builder(
                      itemCount: 8,
                     scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          bool isSelect=(index == position);
                          return InkWell(
                            onTap: (){
                              setstate(() {
                                position=index;
                              });
                            },
                            child:
                            Container(
                              margin: EdgeInsets.only(right: 10.w),
                              height: 42.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                  gradient: isSelect?AppColors.Gardient3():AppColors.Gardient6(),
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Center(child: Text("A+",style: TextStyle(color: isSelect?Colors.white:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
                            ),
                          );}, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,childAspectRatio: 2.55   ), ),
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
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
                          // Get.to(const PaymentScreen());
                        },
                        child: Container(
                            height: 41.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                gradient:Overseer.theme?AppColors.GardientD3(): AppColors.Gardient3(),
                                borderRadius: BorderRadius.circular(15.r)
                            ),
                            child: Center(
                              child: Text("Continue",
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
        ),
      );
    },
  );
}