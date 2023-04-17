import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../widgets/login_option_widget.dart';
import '../../../widgets/registration_widget.dart';
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
                        Image.asset("assets/image25.png",width: 357.w,height: 160.h,),
                        SizedBox(height: 100.h,),
                        GestureDetector(
                            onTap: (){
                              Get.to(const DoctorLoginScreen());
                            },
                            child:    RegisterWidget(text: 'Continue as Doctor', color: AppColors.Gardient1(),),),
                                GestureDetector(
                                    onTap: (){Get.to(const BloodBankLoginScreen());},
                                    child: RegisterWidget(text: 'Continue as BloodBank', color: AppColors.Gardient3(),)),
                        GestureDetector(
                            onTap: (){Get.to(const PharmacyLoginScreen());},
                            child:   RegisterWidget(text: 'Continue as Pharmacy', color: AppColors.Gardient2(),),),
                   GestureDetector(
                       onTap: (){Get.to(const HospitalLoginScreen());},
                       child: RegisterWidget(text: 'Continue as Hospital', color: AppColors.Gardient5(),)),
                      ])))),
    );
  }
}
