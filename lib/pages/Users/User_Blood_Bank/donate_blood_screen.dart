import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/AppLayers/Streaming/Overseer.dart';

import '../../../theme/theme_manager.dart';
import '../../../utils/colors.dart';
import '../../../widgets/baar_widget.dart';
import '../user_setting/user_setting_screen.dart';
ThemeManager _themeManager = ThemeManager();
class DonateBloodScreen extends StatefulWidget {
  const DonateBloodScreen({Key? key}) : super(key: key);

  @override
  State<DonateBloodScreen> createState() => _DonateBloodScreenState();
}

class _DonateBloodScreenState extends State<DonateBloodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
        Container(
          child: Padding(
            padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap:(){
                          Get.to(UserSettingScreen());
                        },
                        child: Icon(Icons.settings,size: 20,color: Overseer.theme?Colors.white:Colors.black,)),
                    Image.asset("assets/logo.png",height: 29.h,width: 63.w,),

                    InkWell(
                      onTap: (){
                        Overseer.theme=!Overseer.theme;
                        setState(() {
                          _themeManager.toggleTheme(Overseer.theme);});},
                      child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)
                  ],
                ),
                SizedBox(height: 30.h,),
                Text("Donate Blood",
                  style: TextStyle(color:Overseer.theme?Colors.white: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                SizedBox(height: 5.h,),
                Text("Give the Gift of LIfe",
                  style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
        ),
          SizedBox(height:25.h),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20.h,left: 25.w,right: 25.w),
                  height: 219.h,
                  width: 368.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Overseer.theme?AppColors.dimcolor: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Brennon Fadel",
                            style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),),
                          subtitle: Text("Rawalpindi",
                            style: TextStyle(color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),),
                          // trailing: Image.asset("assets/image9.png",height: 50.h,width: 50.w,),
                        ),
                        // SizedBox(height: 1.h,),
                        Divider(thickness: 0.5, color: Colors.grey[200],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Date",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("24-12-23",
                                    style: TextStyle(
                                        color: Overseer.theme?Colors.white: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

                              ],
                            ),
                            Column(
                              children: [
                                Text("Unit",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("2",
                                    style: TextStyle(
                                        color: Overseer.theme?Colors.white: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

                              ],
                            ),
                            Column(
                              children: [
                                Text("Status",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("Pending",
                                    style: TextStyle(
                                        color: Overseer.theme?Colors.white: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

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
                                  color: Overseer.theme?Colors.white: AppColors.greencolor,
                                  borderRadius: BorderRadius.circular(15.r)
                              ),
                              child: Center(
                                child: Text("Contact",
                                  style: TextStyle(color: Overseer.theme?Colors.black:Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: () {
                                // Get.to(const DoctorDetailScreen());
                              },
                              child: Container(
                                height: 40.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    gradient:Overseer.theme?AppColors.GardientD3():  AppColors.Gardient3(),
                                    borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: Text("Accept",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                );

              }),
          )


        ],
      ),
    );
  }
}
