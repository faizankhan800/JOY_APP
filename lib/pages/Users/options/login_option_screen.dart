import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../widgets/login_option_widget.dart';
import '../../Professionals/Professional Doctor/category/category_screen.dart';
import '../auth/registration_screen.dart';
class LoginOptionScreen extends StatelessWidget {
  const LoginOptionScreen({Key? key}) : super(key: key);
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
           padding:  EdgeInsets.only(top: 120.h,left: 30.w,right: 30.w),
            child: Column(
               children: [
                Image.asset("assets/image71.png",width: 357.w,height: 160.h,),
                SizedBox(height: 80.h,),
                GestureDetector(
            onTap: (){Get.to(const RegistrationScreen());},
            child:  LoginOptionWidget(text: 'Users', color: AppColors.browncolor, title: 'User', subtitle: 'Tap to Continue as a User.', image: 'assets/image62.png',)),
            GestureDetector(
            onTap: (){Get.to(const CategoryScreen());},
            child: const LoginOptionWidget(text: 'Professionals', color: AppColors.secondarycolor, title: 'Professional', subtitle: 'Tap to Continue as a Professional', image: 'assets/image63.png',)),
      ])))),
    );
  }
}
