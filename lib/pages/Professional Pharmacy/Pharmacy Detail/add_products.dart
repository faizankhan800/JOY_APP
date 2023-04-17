import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/Professional%20Pharmacy/Pharmacy%20Detail/pharmacy_product_screen.dart';
import 'package:journey_of_you/widgets/custom_button.dart';
import 'package:journey_of_you/widgets/drop_down_widget.dart';

import '../../../utils/colors.dart';
import '../../../widgets/textfield_widget.dart';
import '../../Professional Doctor/schedule/schedule_screen.dart';
// import '../schedule/schedule_screen.dart';

class Add_Products extends StatefulWidget {
  const Add_Products({Key? key}) : super(key: key);

  @override
  State<Add_Products> createState() => _Add_ProductsState();
}

class _Add_ProductsState extends State<Add_Products> {
  String _dropdownValue = 'Select Category';
  @override
  Widget build(BuildContext context) {
    final productcontroller=TextEditingController();
    final aboutcontroller=TextEditingController();
    final dosagecontroller=TextEditingController();
    final stockcontroller=TextEditingController();
    final pricecontroller=TextEditingController();
    return Scaffold(
      // backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Add Products",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
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
                  DottedBorder(
                      padding: const EdgeInsets.all(30),
                      color: Colors.grey,
                      strokeWidth: 1,
                      child:const Icon(Icons.image_outlined,color: Colors.grey,)

                  ),
                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Upload Your Photo",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'Product Name ', textController: productcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Short Description', textController: aboutcontroller,),
              SizedBox(height: 30.h,),
              DropdownButton<String>(isExpanded: true,
                hint: const Text("Category"),
                value: _dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.grey,fontSize: 14.sp),
                onChanged: ( newValue) {
                  setState(() {
                    _dropdownValue = newValue!;
                    print(newValue);
                  });
                },
                items: <String>['Select Category','A', 'B','C']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 8.h,),
              TextFieldWidget(text: 'Dosage', textController: dosagecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Stock', textController: stockcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Price', textController: pricecontroller,),
              // SizedBox(height: 40.h,),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children:  [
              //     Text("Select Timing",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
              //     Image.asset("assets/image2.png",height: 24.h,width: 24.w,)
              //   ],
              // ),

              // SizedBox(height: 20.h,),
              // const Divider(color: Colors.grey,thickness: 1,),
              SizedBox(height: 40.h,),
              CustomButton(text: "Add", onTap: (){Get.to(const PharmacyProductScreen(),transition: Transition.fade);})


            ],
          ),
        ),
      ),
    );
  }
}
