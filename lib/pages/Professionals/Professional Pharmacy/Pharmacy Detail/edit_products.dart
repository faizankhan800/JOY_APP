import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:journey_of_you/widgets/custom_button.dart';
import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/textfield_widget.dart';
import '../../Professional Doctor/schedule/schedule_screen.dart';
import '../setting_screen.dart';
// import '../schedule/schedule_screen.dart';

class Edit_Products extends StatefulWidget {
  const Edit_Products({Key? key}) : super(key: key);

  @override
  State<Edit_Products> createState() => _Edit_ProductsState();
}

class _Edit_ProductsState extends State<Edit_Products> {
  String _dropdownValue = 'Select Category';
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;
  Future<void> _getImageFromGallery() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final productnamecontroller=TextEditingController();
    final descriptioncontroller=TextEditingController();
    final dosagecontroller=TextEditingController();
    final controlcontroller=TextEditingController();
    final pricecontroller=TextEditingController();
    return Scaffold(
    backgroundColor:  Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor:  Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Edit Product",style: TextStyle(color: Overseer.theme?AppColors.lightcolor: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
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
                    // padding: const EdgeInsets.all(30),
                    color: Colors.grey,
                    strokeWidth: 1,
                    child: SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: GestureDetector(
                        onTap: (){
                          _getImageFromGallery();
                        },
                        child: _imageFile == null? Icon(Icons.photo_library,color: Colors.grey,):Image.file(_imageFile!,fit: BoxFit.cover,),),
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Upload Your Photo",style: TextStyle(color: Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'Product Name ', textController: productnamecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Short Description', textController: descriptioncontroller,),
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
              TextFieldWidget(text: 'Stock', textController: controlcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Price', textController: pricecontroller,),
              SizedBox(height: 40.h,),

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
              CustomButton(text: "Update", onTap: (){}, gradient:  Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),)


            ],
          ),
        ),
      ),
    );
  }
}
