import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/AppLayers/Streaming/Overseer.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/custom_button.dart';
import 'package:journey_of_you/widgets/dialougebox_widget.dart';

import '../Edit Profile/pharmacy_profile_screen.dart';
import 'edit_products.dart';

class PharmacyProductScreen extends StatelessWidget {
  const PharmacyProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
        body: Column(
          children: [
            Container(
              width: 428.w,
              height: 349.h,
              decoration: const BoxDecoration(
                image:  DecorationImage(
                    image: AssetImage("assets/image19.png",),
                    fit: BoxFit.fill),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                        onTap: (){Get.back();},
                        child: Icon(Icons.arrow_back,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h,right: 30.w,left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Panadol",
                        style: TextStyle(
                            color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Text("\$0.1",
                        style: TextStyle(
                            color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Text("50 in Stock",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                    ),),
                  SizedBox(height: 25.h,),
                  Text("About Pharmacy",
                    style: TextStyle(
                        color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Text("Specifications",
                    style: TextStyle(
                        color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Category",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("Tablet",
                            style: TextStyle(
                                color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(" Pharmacy",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("CareFirst",
                            style: TextStyle(
                                color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Dosage",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("0.2g",
                            style: TextStyle(
                                color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(" Location",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("Rawalpindi",
                            style: TextStyle(
                                color:  Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 100.h,),
                  CustomButton(text: "Edit Product", onTap: (){Get.to(Edit_Products());}, gradient: Overseer.theme?AppColors.GardientD1(): AppColors.Gardient(),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
