import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:journey_of_you/pages/auth/login/login_screen.dart';

import '../../utils/colors.dart';
import '../../widgets/login_text_widget.dart';
import '../../widgets/registration_widget.dart';
import '../../widgets/toggle_button_widget.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
   body: Container(
       height: 926.h,width: 428.w,
       decoration: const BoxDecoration(
           image: DecorationImage(
               image: AssetImage("assets/image24.png"),
               fit: BoxFit.fill)),
     child: Padding(
       padding:  EdgeInsets.only(top: 150.h,left: 30.w,right: 30.w),
       child: Column(
         children: [
           Image.asset("assets/image25.png",width: 357.w,height: 160.h,),
           SizedBox(height: 100.h,),
            RegisterWidget(text: 'Continue With Google', color: AppColors.Gardient3(),),
            RegisterWidget(text: 'Continue With Email', color: AppColors.Gardient2(),),
            RegisterWidget(text: 'Continue With Apple', color: AppColors.Gardient1(),),
           SizedBox(height: 20.h,),
           GestureDetector(
               onTap: (){
                 Get.to( LoginScreen());
               },
               child: const TextWidget(title: 'Already have an Account?', subtitle: 'Login',)),
           SizedBox(height: 30.h,),
           // ToggleButtonWidget()




         ],
       ),
     ),
   )
      ),
    );
  }
}
