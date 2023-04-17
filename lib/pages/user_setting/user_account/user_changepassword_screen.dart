import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/password_textfield_widget.dart';

// import '../../utils/colors.dart';

class UserChangePasswordScreen extends StatefulWidget {
  const UserChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<UserChangePasswordScreen> createState() => _UserChangePasswordScreenState();
}

class _UserChangePasswordScreenState extends State<UserChangePasswordScreen> {
  final passwordcontroller=TextEditingController();
  final newcontroller=TextEditingController();
  final confirmcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Change Password",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h,right: 30.w,left: 30.w),
          child: Column(
            children: [
              PassTextFieldWidget(text: "Old Password", textController: passwordcontroller , ),
              SizedBox(height: 35.h,),
              PassTextFieldWidget(text: "New Password", textController: newcontroller),
              SizedBox(height: 35.h,),
              PassTextFieldWidget(text: "Confirm New Password", textController: confirmcontroller),
              SizedBox(height: 400.h,),
              CustomButton(text: "Change", onTap: (){}),

            ],
          ),
        ),
      ),
    );
  }
}