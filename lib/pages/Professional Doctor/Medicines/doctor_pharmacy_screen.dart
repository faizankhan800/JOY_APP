import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../widgets/appbar_widget.dart';
import '../../../widgets/search_textfield.dart';
import '../doctor_setting/doctor_setting_screen.dart';
import 'doctor_madicine_screen.dart';



class DoctorPharmaciesScreen extends StatelessWidget {
  const DoctorPharmaciesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        body: Padding(
          padding:EdgeInsets.only(top: 17.h,left: 30.w,right: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Get.to(const DoctorSettingScreen());
                          },
                          child: const Icon(Icons.settings,size: 20,)),
                      Image.asset("assets/logo.png",height: 29.h,width: 63.w,),
                      const Icon(Icons.light_mode_outlined,size: 20,)
                    ],
                  ),
                  SizedBox(height: 45.h,),
                  Text("Pharmacies",
                    style: TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  Text("",
                    style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  SizedBox(height: 20.h,),
                  const SearchTextField(),
                ],
              ),
              SizedBox(height: 30.h,),
              Expanded(
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                    ), itemBuilder:(context,index){
                  return  GestureDetector(
                    onTap: (){
               Get.to(const DoctorMedicineScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5.w,left: 5 .w,top: 5.h,bottom: 5.h),
                      padding: EdgeInsets.only(top: 20.h),
                      height: 134.h,
                      width: 174.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],

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
                    ),
                  );
                }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
