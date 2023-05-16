import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import 'bloodbank_changepassword_screen.dart';

class BloodBankAccountScreen extends StatelessWidget {
  const BloodBankAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
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
                  Text("Imran",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
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
                  Text("noumanimran4521@gmail.com",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
                  Text("Phone Number",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Text("+92 333 588914",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),

                  SizedBox(height: 20.h,),
                  Text("Account Security",
                    style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 15.h,),
                  Text("Password",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("************",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                      GestureDetector(
                        onTap: (){
                  Get.to(const BloodBankChangePasswordScreen());
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
