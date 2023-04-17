import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class BuilderWidget extends StatelessWidget {
  final String text;
  final String subtext;
  const BuilderWidget({Key? key,required this.text,required this.subtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
              style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            Text("See All",
              style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)
          ],),
        SizedBox(height: 15.h,),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return  Container(
                  padding: EdgeInsets.only(top: 10.h),
                  margin: EdgeInsets.only(right: 10.w,top: 5.h,left: 10.w,bottom: 5.h),
                  height: 120.h,
                  width: 134.w,
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
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 30.r,),
                          SizedBox(width: 10.w,),
                          Container(
                            height: 15.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: AppColors.greencolor,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: AppColors.secondarycolor,size: 10,),

                                Text("5.0",style: TextStyle(color: AppColors.blackcolor,fontSize: 10.sp,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Text("Dr.Arshad",
                        style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                      Text("Urologist",
                        style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                    ],
                  ),
                );
              }),
        ),
        SizedBox(height: 25.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(subtext,
              style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            Text("See All",
              style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)
          ],),
        SizedBox(height: 15.h,),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return  Container(
                  margin: EdgeInsets.only(right: 10.w,left: 10.h,top: 5.h,bottom: 5.h),
                  padding: EdgeInsets.only(top: 10.h),
                  height: 120.h,
                  width: 134.w,
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
                      borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(backgroundImage:const AssetImage("assets/image4.png"),radius: 30.r,),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Text("CareFirst",
                        style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                      Text("Rawalpindi",
                        style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                    ],
                  ),
                );
              }),
        ),

      ],

    );
  }
}
