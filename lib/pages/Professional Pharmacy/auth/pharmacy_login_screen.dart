import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';
import '../../../utils/app_constant.dart';
import '../../../widgets/app_textfield.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/login_text_widget.dart';
import '../../../widgets/textfield_widget.dart';
import 'Create_Screen.dart';

class PharmacyLoginScreen extends StatelessWidget {
  const PharmacyLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailcontroller=TextEditingController();
    final passwordcontroller=TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
                height: 926.h,width: 428.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Login.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                    padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 90.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 150.h,),
                          Text("LOGIN",
                            style:TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontFamily: AppConstant.Bold,fontWeight: FontWeight.w600),),
                          SizedBox(height: 30.h,),
                          TextFieldWidget(text: 'Email', textController: emailcontroller,),
                          SizedBox(height: 50.h,),
                          AppTextField(textController: passwordcontroller, hintText: 'password', icon: Icons.visibility_outlined,),
                          SizedBox(height: 25.h,),
                          Padding(
                            padding:  EdgeInsets.only(left: 250.w,),
                            child: Text(
                              " Forgot Password?",
                              style: TextStyle(color: Colors.grey[500],fontSize: 14.sp,fontWeight: FontWeight.w500),),
                          ),
                          SizedBox(height: 60.h,),
                           CustomButton(text: 'Login', onTap: () {Get.to(const CreateScreen());},),
                          SizedBox(height: 20.h,),
                          const TextWidget(title: "Don't have an Account? ", subtitle: 'Create',),

                        ]))),
          ],
        ),
      ),
    );
  }
}
