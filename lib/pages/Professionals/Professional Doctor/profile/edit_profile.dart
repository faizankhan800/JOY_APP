import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:journey_of_you/widgets/custom_button.dart';

import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/textfield_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

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
    final namecontroller=TextEditingController();
    final aboutcontroller=TextEditingController();
    final categorycontroller=TextEditingController();
    final pricecontroller=TextEditingController();
    final locationcontroller=TextEditingController();
    return Scaffold(
  backgroundColor:  Overseer.theme?Colors.black:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor:  Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Edit Profile",style: TextStyle(color:  Overseer.theme?Colors.white:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
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
                    children: [
                       Text("Upload Your Photo",style: TextStyle(color:  Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                      SizedBox(height: 10.h,),
                      const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),

                    ],
                  )
                ],
              ),
              SizedBox(height: 25.h,),
              TextFieldWidget(text: 'Name', textController: namecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'About', textController: aboutcontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Category', textController: categorycontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Consolation Price', textController: pricecontroller,),
              SizedBox(height: 30.h,),
              TextFieldWidget(text: 'Location', textController: locationcontroller,),
              SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text("Select Timing",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                  Image.asset("assets/image2.png",height: 24.h,width: 24.w,color:  Overseer.theme?Colors.white:Colors.grey,)
                ],
              ),
              SizedBox(height: 20.h,),
              const Divider(color: Colors.grey,thickness: 1,),
              SizedBox(height: 40.h,),
              CustomButton(text: "Next", onTap: (){}, gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),)


            ],
          ),
        ),
      ),
    );
  }
}
