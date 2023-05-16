import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/registration_widget.dart';
import '../../Professional BloodBank/auth/bloodbank_login_screen.dart';
import '../../Professional Pharmacy/auth/pharmacy_login_screen.dart';
import '../../Professional_Hospitals/auth/hospital_login_screen.dart';
import '../auth/login_screen.dart';
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:  Container(
              height: 926.h,width: 428.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image24.png"),
                      fit: BoxFit.fill)),
              child:Padding(
                  padding:  EdgeInsets.only(top: 150.h,left: 30.w,right: 30.w),
                  child: Column(
                      children: [
                        Image.asset("assets/image71.png",width: 357.w,height: 160.h,),
                        SizedBox(height: 100.h,),
                        GestureDetector(
                            onTap: (){
                              Get.to(const DoctorLoginScreen());
                            },
                            child:    Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              width: 308.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  gradient:AppColors.Gardient1(),
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Center(
                                child: Text("Continue as Doctor",
                                  style:  TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                              ),

                            )),
                                GestureDetector(
                                    onTap: (){Get.to(const BloodBankLoginScreen());},
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 15.h),
                                      width: 308.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          gradient:AppColors.Gardient3(),
                                          borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      child: Center(
                                        child: Text("Continue as BloodBank",
                                          style:  TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                                      ),

                                    )),
                        GestureDetector(
                            onTap: (){Get.to(const PharmacyLoginScreen());},
                            child:Container(
                              margin: EdgeInsets.only(bottom: 15.h),
                              width: 308.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  gradient:AppColors.Gardient2(),
                                  borderRadius: BorderRadius.circular(20.r)
                              ),
                              child: Center(
                                child: Text("Continue as Pharmacy",
                                  style:  TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                              ),

                            )),
                   GestureDetector(
                       onTap: (){Get.to(const HospitalLoginScreen());},
                       child:Container(
                         margin: EdgeInsets.only(bottom: 15.h),
                         width: 308.w,
                         height: 50.h,
                         decoration: BoxDecoration(
                             gradient:AppColors.Gardient5(),
                             borderRadius: BorderRadius.circular(20.r)
                         ),
                         child: Center(
                           child: Text("Continue as Hospital",
                             style:  TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                         ),

                       )),
                      ])))),
    );
  }
}
