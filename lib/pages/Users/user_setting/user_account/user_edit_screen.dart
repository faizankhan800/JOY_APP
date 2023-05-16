import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/textfield_widget.dart';


class UserEditProfile extends StatelessWidget {
  const UserEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final namecontroller=TextEditingController();
    final addresscontroller=TextEditingController();
    final emailcontroller=TextEditingController();
    final numbercontroller=TextEditingController();

    return Scaffold(
backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Edit Profile",style: TextStyle(color:Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30,right: 30.w,left: 30.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: const AssetImage("assets/image10.png",),radius: 50.r),

                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Change Your Photo",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'First Name', textController: namecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Last Name', textController: addresscontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Email Address', textController: emailcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Phone Number', textController: numbercontroller,),
              SizedBox(height: 200.h,),
              CustomButton(text: "Update", onTap: (){}, gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),),


            ],
          ),
        ),
      ),
    );
  }
}
