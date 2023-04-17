import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../utils/colors.dart';
import '../../../widgets/textfield_widget.dart';
class PharmacyEditProfileScreen extends StatelessWidget {
  const PharmacyEditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final namecontroller=TextEditingController();
    final categorycontroller=TextEditingController();
    final pricecontroller=TextEditingController();
    return Scaffold(
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
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.r)
                    ),
                    child:  Image.asset("assets/image17.png",height: 100.h,width: 100.w,fit: BoxFit.fill,),
                  ),
                  SizedBox(width: 20.w,),
                  Column(
                    children: [
                      const Text("Upload Your medicines",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'Name', textController: namecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Category', textController: categorycontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Price', textController: pricecontroller,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children:  [
              //     Text("Select Timing",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              //     Image.asset("assets/image2.png",height: 24.h,width: 24.w,)
              //   ],
              // ),
              SizedBox(height: 50.h,),
              CustomButton(text: "Next", onTap: (){})


            ],
          ),
        ),
      ),
    );
  }
}
