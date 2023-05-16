import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/textfield_widget.dart';
import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import '_pharmacy_edit_profile.dart';
import 'change_password.dart';

class Account_Screen extends StatefulWidget {
  const Account_Screen({Key? key}) : super(key: key);

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Overseer.theme?AppColors.dimcolor: Colors.white,
        elevation: 0,
        title: Text("Account",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,

      ),
    body: SingleChildScrollView(
      child: Padding(
      padding: EdgeInsets.only(top: 30.h,right: 30.w,left: 30.w),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      // gradient container
      // Container(
      // height: 124.h,
      // width: 368.w,
      // decoration:   BoxDecoration(
      // gradient: LinearGradient(colors: [
      // Color(0xFF8F94FB),
      // Color(0xFF4E54C8),
      // ],
      // begin: Alignment.centerRight,
      // end: Alignment.centerLeft,
      // ),
      // borderRadius: BorderRadius.circular(20.r),
      // ),
      // child:Padding(
      // padding: EdgeInsets.only(top: 20.h,left: 20.w),
      // child: Column(
      // children: [
      // Row(
      // children: [
      // CircleAvatar(child: Image.asset("assets/image9.png",fit: BoxFit.cover,),radius: 40.r),
      // SizedBox(width: 20.w,),
      // Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // children: [
      // Text("Care First",
      // style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),),
      // SizedBox(height: 15.h,),
      // Text("Pharmacy",
      // style: TextStyle(color: Colors.white70,fontSize: 12.sp,fontWeight: FontWeight.w400),),
      // ],
      // ),
      // ],
      // ),
      // ]
      // ),
      // ),
      // ),
        SizedBox(height: 30.h,),
        Text("Account Details",
                    style: TextStyle(color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 25.h,),
                  Text("Name",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10.h,),
        Text("CareFirst",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 15.h,),
                  Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
        Text("Address",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 10.h,),
        Text("Address",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 15.h,),
        Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
        Text("Email Address",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 10.h,),
        Text("noumanimran4521@gmail.com",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 15.h,),
        Divider(thickness: 1.w,color: Colors.grey,),
                  SizedBox(height: 15.h,),
        Text("Phone Number",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 10.h,),
        Text("+92 333 588914",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 15.h,),
        Divider(thickness: 1.w,color: Colors.grey,),

                  SizedBox(height: 20.h,),
        Text("Account Security",
                    style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        SizedBox(height: 15.h,),
        Text("Password",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),),
        SizedBox(height: 10.h,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text("************",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
           GestureDetector(
             onTap: (){
               Get.to(ChangePasswordScreen());
             },
             child: Container(
               height: 27.h, width: 69.w,
               decoration: BoxDecoration(
                   gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                   borderRadius: BorderRadius.circular(5.r)
                   ),
               child: Center(child: Text("Change",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),)),
               ),
           ),
         ],
       ),
        SizedBox(height: 15.h,),
        Divider(thickness: 1.w,color: Colors.grey,),


        ]
      ),
      ),
    ),

    );
  }
}
