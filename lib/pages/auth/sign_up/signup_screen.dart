import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/auth/controllers/my_controller.dart';
import 'package:journey_of_you/pages/auth/login/login_screen.dart';
import 'package:journey_of_you/utils/app_constant.dart';

import '../../../utils/colors.dart';
import '../../../widgets/app_textfield.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/login_text_widget.dart';
import '../../../widgets/textfield_widget.dart';
import '../profile_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyController controller = Get.put(MyController());
    var emailController=TextEditingController();
    var nameController=TextEditingController();
    var passwordController=TextEditingController();
    var confirmpasswordController=TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: 926.h,width: 428.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Signup.png"),
                  fit: BoxFit.fill)),
          child: Padding(
            padding:  EdgeInsets.only(left: 25.w,top: 50.h,right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back)),
                SizedBox(height: 50.h,),
                Text("SIGN UP",style: TextStyle(color: AppColors.blackcolor,
                    fontSize: 24,fontFamily: AppConstant.Bold,fontWeight: FontWeight.w600),),
                SizedBox(height: 30.h,),
                TextFieldWidget(text: 'Email', textController:emailController ,),
                SizedBox(height: 30.h,),
                TextFieldWidget(text: 'User Name', textController:nameController ,),
                SizedBox(height: 30.h,),
                AppTextField(textController: passwordController, hintText: 'Password', icon: Icons.visibility_outlined,),
                SizedBox(height: 30.h,),
                AppTextField(textController: confirmpasswordController, hintText: 'Confirm Password', icon: Icons.visibility_outlined,),
                SizedBox(height: 50.h,),
                CustomButton(text: 'Next', onTap: () { Get.to(ProfileScreen()); },),
                SizedBox(height: 20.h,),
                GestureDetector(
                    onTap: (){
                      Get.to(const LoginScreen());
                    },
                    child: const TextWidget(title: 'Already have an Account? ', subtitle: 'Login',))




              ],
            ),
          ),
        ),
      ),
    );
  }
}
