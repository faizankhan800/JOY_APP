import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/textfield_widget.dart';
import 'hospital_profile_screen.dart';
class HospitalEditScreen extends StatefulWidget {
  const HospitalEditScreen({Key? key}) : super(key: key);

  @override
  State<HospitalEditScreen> createState() => _HospitalEditScreenState();
}

class _HospitalEditScreenState extends State<HospitalEditScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;
  File? _imageFiletwo;
  Future<void> _getImageFromGallery() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }
  Future<void> _getImageFromGallerytwo() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFiletwo = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    var nameController=TextEditingController();
    var lastnameController=TextEditingController();
    var addressController=TextEditingController();
    return Scaffold(
      backgroundColor: Overseer.theme?AppColors.blackcolor:AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        title: Text("Edit CRM",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  _getImageFromGallerytwo();
                },
                child: Container(
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
                    color: Overseer.theme?AppColors.dimcolor:Colors.white,
                    borderRadius: BorderRadius.circular(20.r),

                  ),
                  child: Center(
                    child: _imageFiletwo == null?  Text(
                      "Upload a Cover Photo",
                      style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),):Image.file(_imageFiletwo!,fit: BoxFit.cover,width: double.infinity,),
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
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
                       Text("Upload Profile Photo",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
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
              CustomButton(text: "Update", onTap: (){}, gradient:Overseer.theme?AppColors.GardientD1(): AppColors.Gardient(),)


            ],
          ),
        ),
      ),
    );
  }
}
