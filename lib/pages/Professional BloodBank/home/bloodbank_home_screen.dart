import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../setting/bloodbank_setting_screen.dart';
import 'bloodbank_donateblood_screen.dart';
import 'campaign_screen.dart';
class BloodBankHomeScreen extends StatefulWidget {
   BloodBankHomeScreen({Key? key}) : super(key: key);

  @override
  State<BloodBankHomeScreen> createState() => _BloodBankHomeScreenState();
}

class _BloodBankHomeScreenState extends State<BloodBankHomeScreen> {
  String _dropdownValue = 'Select City';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 60.h,right: 30.w,left: 30.w),
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
            Text("Hello John Doe",
              style: TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 5.h,),
            Text("Give the Gift of LIfe",
              style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
            SizedBox(height: 25.h,),
            Container(
                height: 153.h,
                width: 368.w,
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image53.png")
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 20.h,right: 20.w,left: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Choose City",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                      SizedBox(height: 10.h,),
                      DropdownButton<String>(isExpanded: true,
                        hint: const Text("City",style: TextStyle(color: Colors.grey),),
                        dropdownColor: Colors.grey.shade400,

                        value: _dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey,fontSize: 14.sp),
                        onChanged: ( newValue) {
                          setState(() {
                            _dropdownValue = newValue!;
                            print(newValue);
                          });
                        },
                        items: <String>['Select City','Lahore', 'Karachi','Islamabad']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style: TextStyle(color: Colors.white),),
                          );
                        }).toList(),
                      ),

                    ],
                  ),
                )
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                   Get.to(const BloodBankDonateBloodScreen());
                  },
                  child: Container(
                    height: 130.h,
                    width: 174.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image54.png",),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Donate Blood",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                 onTap: (){Get.to(CampaignScreen());},
                  child: Container(
                    height: 130.h,
                    width: 174.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image55.png",),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Campaign",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Text("Blood Bank Stock Near You",style: TextStyle(color:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),

              ],
            ),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),
                Image.asset("assets/image66.png",height: 113.h,width: 69.w,),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
