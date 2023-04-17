import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../pages/medical_services/doctor_detail_screen.dart';
import '../utils/colors.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5.h,top: 5.h,left: 5.w,right: 5.w),
          height: 219.h,
          width: 368.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: 15.w,right: 15.w),
            child: Column(
              children: [
                ListTile(
                  title: Text("Dr Iftikhar Ahmed",
                    style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w600),),
                  subtitle: Text("Urologist",
                    style: TextStyle(color:Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  trailing: Image.asset("assets/image9.png",height: 50.h,width: 50.w,),
                ),
                // SizedBox(height: 1.h,),
                Divider(thickness: 0.5,color: Colors.grey[200],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Price",
                            style: TextStyle(color:Colors.grey[400],fontSize: 12.sp,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h,),
                        Text("1,800",
                            style: TextStyle(color:AppColors.blackcolor,fontSize: 15.sp,fontWeight: FontWeight.w500))

                      ],
                    ),
                    Column(
                      children: [
                        Text("Location",
                            style: TextStyle(color:Colors.grey[400],fontSize: 12.sp,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h,),
                        Text("Rawalpindi",
                            style: TextStyle(color:AppColors.blackcolor,fontSize: 15.sp,fontWeight: FontWeight.w500))

                      ],
                    ),
                    Column(
                      children: [
                        Text("Rating",
                            style: TextStyle(color:Colors.grey[400],fontSize: 12.sp,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h,),
                        Text("4.8",
                            style: TextStyle(color:AppColors.blackcolor,fontSize: 15.sp,fontWeight: FontWeight.w500))

                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: AppColors.greencolor,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Center(
                        child: Text("Contact",
                          style: TextStyle(color:Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    GestureDetector(
                      onTap: (){
                        Get.to( DoctorDetailScreen());
                      },
                      child: Container(
                        height: 40.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            gradient: AppColors.Gardient1(),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Center(
                          child: Text("Book",
                            style: TextStyle(color:Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
