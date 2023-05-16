import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../utils/app_constant.dart';
import '../../../utils/colors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/drop_down_widget.dart';
import '../../../widgets/login_text_widget.dart';
import '../../../widgets/textfield_widget.dart';
import 'disease_screen.dart';
import 'login/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  // Future<void> _getImageFromCamera() async {
  //   final pickedFile = await _picker.getImage(source: ImageSource.camera);
  //
  //   if (pickedFile != null) {
  //     setState(() {
  //       _imageFile = File(pickedFile.path);
  //     });
  //   }
  // }

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
    var nameController=TextEditingController();
    var lastnameController=TextEditingController();
    var addressController=TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 926.h,width: 428.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Signup.png"),
                  fit: BoxFit.fill)),
          child: Padding(
              padding:  EdgeInsets.only(left: 25.w,top: 40.h,right: 30.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back)),
                    SizedBox(height: 30.h,),
                    Text("Create Profile",style: TextStyle(color: AppColors.blackcolor,
                        fontSize: 24,fontFamily: AppConstant.Bold,fontWeight: FontWeight.w600),),
                    SizedBox(height: 30.h,),
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
                            const Text("Upload Your Photo",style: TextStyle(color: AppColors.blackcolor,fontSize: 14,fontWeight: FontWeight.w500),),
                            SizedBox(height: 10.h,),
                            const Text("Upload Size Should be less than\n 15 mb.",style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w400),),
                          ],
                        )
                      ],
                    ),
                    // SizedBox(height: 20.h,),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 600.h,
                        child: ListView(
                          children: [
                            TextFieldWidget(text: 'First Name', textController:nameController,),
                            SizedBox(height: 20.h,),
                            TextFieldWidget(text: 'Last Name', textController:lastnameController,),
                            SizedBox(height: 20.h,),
                            TextFieldWidget(text: 'Address', textController:addressController,),
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
                          DropDownWidget(),



                            SizedBox(height: 40.h,),
                            CustomButton(text: "Next", onTap: (){Get.to(DiseaseScreen());}, gradient: AppColors.Gardient(),),
                            SizedBox(height: 20.h,),
                            GestureDetector(
                                onTap: (){
                                  Get.to( LoginScreen());
                                },
                                child: const TextWidget(title: 'Already have an Account?', subtitle: 'Login',))

                          ],
                        ),
                      ),
                    )


  ]),

        ),
    ),
      ));
  }
}
