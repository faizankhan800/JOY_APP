import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../utils/colors.dart';
import '../../../widgets/textfield_widget.dart';
import '../setting_screen.dart';


class PharmacyEditProfile extends StatelessWidget {
  const PharmacyEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final namecontroller=TextEditingController();
    final addresscontroller=TextEditingController();
    final emailcontroller=TextEditingController();
    final numbercontroller=TextEditingController();

    return Scaffold(
      // backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Edit Profile",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30.w,left: 30.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              // Row(
              //   children: [
              //     CircleAvatar(backgroundImage: AssetImage("assets/image10.png",),radius: 50.r),
              //
              //     SizedBox(width: 20.w,),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text("Change Your Photo",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
              //         SizedBox(height: 10.h,),
              //         const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
              //
              //       ],
              //     )
              //   ],
              // ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'Name', textController: namecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Address', textController: addresscontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Email Address', textController: emailcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Phone Number', textController: numbercontroller,),
              SizedBox(height: 263.h,),
              CustomButton(text: "Update", onTap: (){Get.to(const PharmacySettingScreen(),transition: Transition.fade);}),


            ],
          ),
        ),
      ),
    );
  }
}
