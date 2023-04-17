import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';

class AppointmentHistoryScreen extends StatelessWidget {
  const AppointmentHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Appointment History",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 124.h,
              width: 368.w,
              decoration:   BoxDecoration(
                gradient: AppColors.Gardient1(),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child:Padding(
                padding: EdgeInsets.only(top: 20.h,left: 20.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Image.asset("assets/image9.png",fit: BoxFit.cover,),),
                        SizedBox(width: 20.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ali Hamza",
                              style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                            SizedBox(height: 5.h,),
                            Text("24 Years Old",
                              style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                            SizedBox(height: 5.h,),
                            Text("60kg",
                              style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )

            ),
            const SizedBox(height: 25,),
            Text("Report",
              style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      child: Icon(Icons.favorite,color: AppColors.blackcolor,size: 20,),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("96 bpm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 5.h,),
                        Text("Heart Rate",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      child: Icon(Icons.water_drop_rounded,color: AppColors.blackcolor,size: 20,),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A+",
                          style: TextStyle(
                              color: AppColors.blackcolor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 5.h,),
                        Text("Blood Group",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      child: Icon(Icons.favorite,color: AppColors.blackcolor,size: 20,),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("96 bpm",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 5.h,),
                        Text("Heart Rate",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      child: Icon(Icons.water_drop_rounded,color: AppColors.blackcolor,size: 20,),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A+",
                          style: TextStyle(
                              color: AppColors.blackcolor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 5.h,),
                        Text("Blood Group",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25.h,),
            Text("Diagnosis",
              style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 15.h,),
            Container(
              height: 138.h,
              width: 369.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15.h,left: 15.w,right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Arshad Khan came this Monday with a\n Distinctive behavioral improvement,\n we talked about his new relationship with a girl\n in his  neighbourhood. ",
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("15 Dec, 2022",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Container(
              height: 138.h,
              width: 369.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15.h,left: 15.w,right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Arshad Khan came this Monday with a\n Distinctive behavioral improvement,\n we talked about his new relationship with a girl\n in his  neighbourhood. ",
                      style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("15 Dec, 2022",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
