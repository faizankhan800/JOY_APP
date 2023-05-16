import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../utils/colors.dart';
import 'Edit Profile/account_screen.dart';
import 'auth/pharmacy_login_screen.dart';
import 'notification_setting.dart';

class PharmacySettingScreen extends StatefulWidget {
  const PharmacySettingScreen({Key? key}) : super(key: key);

  @override
  State<PharmacySettingScreen> createState() => _PharmacySettingScreenState();
}

class _PharmacySettingScreenState extends State<PharmacySettingScreen> {
  @override
  List<Widget> arrlink= [const Account_Screen(),const Notification_Setting(),const PharmacyLoginScreen()];
  List<String> arrtitle= ["Account","Notification","Logout"];
  List<String> arricon= ['assets/pic6.png','assets/pic5.png','assets/pic4.png'];
 // int index = 0;

  Widget build(BuildContext context) {
    // String child = arricon[index];
    // Widget childtext = Text(child);
    return Scaffold(
      backgroundColor:  Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor:  Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Setting",style: TextStyle(color: Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h,right: 30.w,left: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //gradient container
            // Container(
            //     height: 124.h,
            //     width: 368.w,
            //     decoration:   BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         Color(0xFF8F94FB),
            //         Color(0xFF4E54C8),
            //       ],
            //         begin: Alignment.centerRight,
            //         end: Alignment.centerLeft,
            //       ),
            //       borderRadius: BorderRadius.circular(20.r),
            //     ),
            //     child:Padding(
            //       padding: EdgeInsets.only(top: 20.h,left: 20.w),
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               CircleAvatar(child: Image.asset("assets/image9.png",fit: BoxFit.cover,),radius: 40.r),
            //               SizedBox(width: 20.w,),
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text("Care First",
            //                     style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),),
            //                   SizedBox(height: 15.h,),
            //                   Text("Pharmacy",
            //                     style: TextStyle(color: Colors.white70,fontSize: 12.sp,fontWeight: FontWeight.w400),),
            //                 ],
            //           ),
            //         ],
            //       ),
            //         ]
            //       ),
            //     ),
            // ),
            //   SizedBox(height: 30.h,),
            //   Text("Settings",
            //    style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            //    SizedBox(height: 15.h,),
                SizedBox(
                height:370.h,
                child: ListView.builder(
               itemCount: 3,
                itemBuilder: (context,index){
             return GestureDetector(
               onTap: (){
                Get.to(arrlink[index],transition: Transition.fade);
                 },
                  child: Container(
                  padding: EdgeInsets.only(left: 10.w,right: 10.w),
                      margin: EdgeInsets.only(bottom: 15.h),
                       width: 365.w,
                    height: 50.h,
                       decoration: BoxDecoration( boxShadow: const [
                         BoxShadow(
                           color: Colors.black12,
                           offset: Offset(0.0, 1.0), //(x,y)
                           blurRadius: 5.0,
                         ),
                       ],
                    color:  Overseer.theme?AppColors.dimcolor:Colors.white,
                      borderRadius: BorderRadius.circular(15.r)
                       ),
                        child:Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container( height: 40.h,width: 40.w,
                             decoration: const BoxDecoration(
                               // color: Color(0xffF7F7F7), borderRadius: BorderRadius.circular(10.r),
                             ), child: Image.asset(arricon[index]),
                           ),
                     Text(arrtitle[index],style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                     // SizedBox(width: 200.w,),
                     Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 10,)
                        ],
                  ), ),
                  );}
                 ),
                 ),
                ],

        ),
      ),
    );
  }
}
