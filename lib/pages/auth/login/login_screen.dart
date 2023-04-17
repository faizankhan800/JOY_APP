import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/AppLayers/Streaming/Provider.dart';
import 'package:journey_of_you/pages/auth/login/login_manager.dart';
import 'package:journey_of_you/pages/auth/sign_up/signup_screen.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../utils/app_constant.dart';
import '../../../utils/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/login_text_widget.dart';

import '../controllers/my_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey=GlobalKey<FormState>();
    final MyController controller = Get.put(MyController());
    // var email='';
    //
    // var password='';

    final emailcontroller=TextEditingController();

    final passwordcontroller=TextEditingController();

    // bool _passwordVisible=true;

    @override
    // void dispose(){
    //   emailcontroller.dispose();
    //   passwordcontroller.dispose();
    //   super.dispose();
    // }
    LoginFormManager manager = Provider.of(context).fetch(LoginFormManager);
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: 926.h,width: 428.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Login.png",),
                      fit: BoxFit.fill)),
              child: Padding(
                padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 90.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    SizedBox(height: 150.h,),
                    Text("LOGIN",
                      style:TextStyle(color: AppColors.blackcolor,fontSize: 24.sp,fontFamily: AppConstant.Bold,fontWeight: FontWeight.w600),),
                    SizedBox(height: 40.h,),
                    StreamBuilder<String>(
                        stream: manager.email$,
                        builder: (context, snapshot) {
                          return TextFormField(
                            controller: emailcontroller,
                            autofocus: false,
                            onChanged: (value){
                              manager.inEmail.add(value);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              labelStyle:  TextStyle(
                                  color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),
                              // hintText: '@ xyz@gmail.com',
                              labelText: 'Email Address',
                              fillColor: AppColors.lightcolor,

                              // errorText: snapshot.error == null
                              //     ? ""
                              //     : snapshot.error.toString(),
                              // errorStyle:
                              // TextStyle(color: Colors.redAccent, fontSize: 15.sp),
                            ),

                          );
                        }
                    ),
                    SizedBox(height: 20.h,),
                    StreamBuilder<String>(

                        stream: manager.password$,
                        builder: (context, snapshot) {
                          return  Obx(()=>TextFormField(
                              controller: passwordcontroller,
                              autofocus: false,
                              obscureText:controller.isPasswordHidden.value,
                              onChanged: (value){
                                manager.inPassword.add(value);
                              },
                              decoration: InputDecoration(

                                // errorStyle:
                                // TextStyle(color: Colors.redAccent, fontSize: 15.sp),
                                // errorText: snapshot.error == null
                                //     ? ""
                                //     : snapshot.error.toString(),
                                // labelStyle:  TextStyle(
                                //   color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),


                                  fillColor: AppColors.lightcolor,
                                  filled: true,
                                  suffixIcon: InkWell(
                                    onTap: (){
                                      controller.isPasswordHidden.value=!controller.isPasswordHidden.value;
                                    },
                                    child: Icon( controller.isPasswordHidden.value? Icons.visibility:Icons.visibility_off,
                                      color: Colors.grey,size: 20,),
                                    // hintText: '@ xyz@gmail.com',
                                  ),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)
                              )));
                        }
                    ),
                    SizedBox(height: 25.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 250.w,),
                      child: Text(
                        " Forgot Password?",
                        style: TextStyle(color: Colors.grey[500],fontSize: 14.sp,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: 30.h,),
                    StreamBuilder<Object>(
                        stream: manager.isLoginFormValid$,
                        builder: (context, snapshot) {
                          return CustomButton(text: 'Login', onTap:(){
                            Get.snackbar(
                              "Submitting",
                              "Verifying User Details",
                              dismissDirection: DismissDirection.horizontal,
                              isDismissible: true,
                              backgroundColor: Colors.orangeAccent,
                              duration: const Duration(seconds: 3),
                            );
                            if(snapshot.hasData){
                              showDialog(
                                context: context,
                                builder: (BuildContext context){
                                  print("===snapshot data===${snapshot.hasData}");
                                  return  const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),

                                  );
                                },
                                barrierDismissible: true,
                              );
                              manager.isLoginFormSubmit$.listen((event) async{
                                if(Overseer.is_user_valid==true) {
                                  Get.snackbar(
                                    "Congratulation",
                                    Overseer.errorMessage,
                                    dismissDirection:
                                    DismissDirection.horizontal,
                                    isDismissible: true,
                                    backgroundColor: Colors.orangeAccent,
                                    duration: const Duration(seconds: 3),
                                    icon: const Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.green),
                                  );
                                }
                                else {
                                  Get.snackbar(
                                    "User Not Found",
                                    Overseer.login_status,
                                    dismissDirection: DismissDirection.horizontal,
                                    isDismissible: true,
                                    backgroundColor: Colors.orangeAccent,
                                    duration: const Duration(seconds: 3),
                                    icon: const Icon(Icons.error_outline, color: Colors.red),
                                  );
                                  // Get.offAll(Login());
                                }
                              });
                            }else{

                              Get.snackbar(
                                "Error",
                                "Snap short has not data",
                                dismissDirection:
                                DismissDirection.horizontal,
                                isDismissible: true,
                                backgroundColor:Colors.orangeAccent,
                                duration: const Duration(seconds: 3),
                                icon: const Icon(Icons.error_outline,
                                    color: Colors.red),
                              );
                            }
                          },);
                        }
                    ),
                    SizedBox(height: 20.h,),
                    GestureDetector(
                        onTap: (){
                          Get.to(const SignUpScreen());
                        },
                        child: const TextWidget(title: 'Don\t have an Account?', subtitle: 'Create',))

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
