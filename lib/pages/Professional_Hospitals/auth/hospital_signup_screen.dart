import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../utils/colors.dart';
import '../../../widgets/textfield_widget.dart';
import '../Home/hospital_profile_screen.dart';
class HospitalSignUpScreen extends StatelessWidget {
  const HospitalSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController=TextEditingController();
    var lastnameController=TextEditingController();
    var addressController=TextEditingController();
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 80.h,left: 30.w,right: 30.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Hospital",
                style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 45.h,),
              Container(
                height: 170.h,width: 368.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),

                ),
                child: Center(
                  child:   Text(
                    "Upload a Cover Photo",
                    style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(height: 25.h,),
              Row(

                children: [
                  DottedBorder(
                      padding: const EdgeInsets.all(30),
                      color: Colors.grey,
                      strokeWidth: 1,
                      child:const Icon(Icons.image_outlined,color: Colors.grey,)

                  ),
                  SizedBox(width: 20.w,),
                  Column(
                    children: [
                      const Text("Upload Profile Photo",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'First Name', textController:nameController,),
              SizedBox(height: 20.h,),
              TextFieldWidget(text: 'About', textController:lastnameController,),
              SizedBox(height: 20.h,),
              TextFieldWidget(text: 'Location', textController:addressController,),
              SizedBox(height: 90.h,),
              CustomButton(text: "Upload", onTap: (){Get.to(ProHospitalProfileScreen());})

            ],
          ),
        ),
      ),
    );
  }
}
