import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/colors.dart';
import '../setting/bloodbank_setting_screen.dart';
class CampaignScreen extends StatelessWidget {
   CampaignScreen({Key? key}) : super(key: key);
  final Uri _url =  Uri(
    scheme: 'tel',
    path: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 60.h,left:30.w,right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap:(){
                     Get.to(const BloodBankSettingScreen());
                    },
                    child: const Icon(Icons.settings,size: 20,)),
                Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
                const Icon(Icons.light_mode_outlined,size: 20,)
              ],
            ),
            SizedBox(height: 45.h,),
            Text("Find a Donor",
              style: TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 5.h,),
            Text("Give the Gift of LIfe",
              style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
            SizedBox(height: 30.h,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index) {
                    return Container(
                      margin:  EdgeInsets.only(bottom: 10.h,left: 10.w,right: 10.w),
                      height: 97.h,
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 15.h, left: 20.w, right: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Brennan Fadel", style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Blood Group: A+", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),),
                                GestureDetector(
                                  onTap: (){
                                    _launchUrl();
                                  },
                                  child: Container(
                                    height: 40.h,
                                    width: 95.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      gradient: AppColors.Gardient3(),
                                    ),
                                    child: Center(child: Text("Contact",
                                      style: TextStyle(color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400),),),
                                  ),
                                )
                              ],
                            ),
                            Text("City: Lahore", style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    );
                  }),
            )


          ],
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
