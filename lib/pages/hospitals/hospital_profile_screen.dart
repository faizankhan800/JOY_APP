import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../widgets/cart_widget.dart';
class HospitalProfileScreen extends StatelessWidget {
  const HospitalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 309.h,
              width: 431.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image56.png")
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 50.h,left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();

                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_back,color: Colors.grey,size: 20,),
                        ),

                      ),
                    ),
                    SizedBox(height: 100.h,),
                    Row(
                      children: [
                        CircleAvatar(backgroundImage:AssetImage("assets/image4.png"),radius: 30.r,),
                        SizedBox(width: 15.w,),
                        Column(
                          children: [
                            Text("HumanKind",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                            SizedBox(height: 10.h,),
                            Container(
                              height: 27.h, width: 69.w,
                              decoration: BoxDecoration(
                                  gradient:AppColors.Gardient(),
                                  borderRadius: BorderRadius.circular(5.r)
                              ),
                              child: Center(child: Text("follow",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),)),
                            )

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:  EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About CMH",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts",
                      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Color(0xffFB6F93),size: 20,),
                      SizedBox(width: 20.w,),
                      Text("Akshya Nagar 1st, Rammurthy.",
                          style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)),

                    ],
                  ),
                  SizedBox(height: 25.h,),
                  SizedBox(
                    height: 500.h,
                    child: ListView(
                      children: [
                        Text("Doctors",
                            style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600)),
                        SizedBox(height: 15.h,),
                        SizedBox(
                          height: 150.h,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context,index){
                                return  Container(
                                  padding: EdgeInsets.only(top: 10.h),
                                  margin: EdgeInsets.only(right: 10.w,left: 10.w,top: 5.h,bottom: 3.h),
                                  height: 134.h,
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
                                      borderRadius: BorderRadius.circular(20.r)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(backgroundImage:const AssetImage("assets/image9.png"),radius: 30.r,),

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
                        Text("Pharmacy",
                            style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600)),
                        SizedBox(height: 25.h,),
                        Container(
                          padding: EdgeInsets.only(top: 10.h,),
                          margin: EdgeInsets.only(right: 250.w,left: 10.w,top: 5.h,bottom: 3.h),
                          height: 134.h,
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
                              borderRadius: BorderRadius.circular(20.r)
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
                              Text("Midlife",
                                style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                              Text("Islamabad",
                                style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                        SizedBox(height: 25.h,),
                        Text("Post",
                            style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500)),
                        SizedBox(height: 15.h,),
                        const CartWidget(
                          image: 'assets/image11.png',
                          text: 'Covid - 19 Cases', subtitle: '20 min ago',),

                      ],
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
