import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/Users/user_setting/user_account/user_changepassword_screen.dart';
import 'package:journey_of_you/pages/Users/user_setting/user_account/user_edit_screen.dart';

import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 315.h,
                  width: 428.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/image70.png",)
                      )
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){Get.back();}, icon: const Icon(Icons.arrow_back,color: Colors.white,),),
                            Text("My Account",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                            Container()
                          ],
                        ),
                        SizedBox(height: 50.h,),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.white,radius: 40.r,backgroundImage: AssetImage("assets/image57.png"),),
                            SizedBox(width: 30.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nouman Imran",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                                SizedBox(height: 5.h,),
                                Text("Depression",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),

                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                ),
                Positioned(
                    bottom: 0.h,right: 50.w,
                    child:   GestureDetector(
                        onTap: (){
                          Get.to(const UserEditProfile());
                        },
                        child: CircleAvatar(radius: 20.r,backgroundColor: Colors.white,child: const Icon(Icons.edit,color: Color(0xff8F94FB),),)))
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 40.h,left: 30.w,right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h,),
                  Text("Account Details",
                    style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 25.h,),
                  Text("First Name",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("Nouman",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
                  Text("Last Name",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("Imran",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
                  Text("Address",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("Address",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
                  Text("Email Address",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("noumanimran4521@gmail.com",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
                  Text("Phone Number",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("+92 333 588914",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),

                  SizedBox(height: 20.h,),
                  Text("Account Security",
                    style: TextStyle(color:Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 15.h,),
                  Text("Password",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("************",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                      GestureDetector(
                        onTap: (){
                           Get.to(const UserChangePasswordScreen());
                        },
                        child: Container(
                          height: 27.h, width: 69.w,
                          decoration: BoxDecoration(
                              gradient:Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                              borderRadius: BorderRadius.circular(5.r)
                          ),
                          child: Center(child: Text("Change",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
