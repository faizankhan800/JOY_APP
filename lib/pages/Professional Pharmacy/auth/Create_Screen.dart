
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../utils/app_constant.dart';
import '../../../utils/colors.dart';
import '../../../widgets/textfield_widget.dart';
import '../../auth/login/login_screen.dart';
import '../Pharmacy Detail/pharmacy_screen.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController=TextEditingController();
    var locationController=TextEditingController();
    var contactController=TextEditingController();
    var availableController=TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 25.w,top: 40.h,right: 30.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back)),
                  SizedBox(height: 80.h,),
                  Text("Add Pharmacy",style: TextStyle(color: AppColors.blackcolor,
                      fontSize: 24.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 30.h,),
                  Row(
                    children: [
                      DottedBorder(
                          padding: const EdgeInsets.all(30),
                          color: Colors.grey,
                          strokeWidth: 1,
                          child:const Icon(Icons.image_outlined,color: Colors.grey,)

                      ),
                      SizedBox(width: 20.w,),
                      Column( crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          const Text("Upload Pharmacy Photo",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                          SizedBox(height: 10.h,),
                          const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                        ],
                      )
                    ],
                  ),
                  // SizedBox(height: 20.h,),
                  SizedBox(
                    height: 600.h,
                    child: ListView( shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                      children: [
                        TextFieldWidget(text: 'Name', textController:nameController,),
                        SizedBox(height: 20.h,),
                        TextFieldWidget(text: 'Location', textController:locationController,),
                        SizedBox(height: 20.h,),
                        TextFieldWidget(text: 'Contact', textController:contactController,),
                        SizedBox(height: 25.h,),
                        TextFieldWidget(text: 'Availability', textController:availableController,),
                        SizedBox(height: 25.h,),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children:  [
                        //     Text("Gender",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                        //     const Icon(Icons.arrow_drop_down)
                        //   ],
                        // ),
                        // SizedBox(height: 10.h,),
                        // Divider(thickness: 1.2.w,color: Colors.grey,),
                       // DropDownWidget(),



                      SizedBox(height: 130.h,),
                        CustomButton(text: "Add", onTap: (){Get.to(const ProPharmacyScreen());}),
                      ],
                    ),
                  )


                ]),

          ),
        ));
  }
}
