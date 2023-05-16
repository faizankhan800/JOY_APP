import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/Users/pharmacies/product_screen.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../theme/theme_manager.dart';
import '../../../utils/colors.dart';
ThemeManager _themeManager = ThemeManager();
class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 17.h,left: 30.w,right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(Icons.settings,size: 20,color: Overseer.theme?Colors.white:Colors.black,),
                        Image.asset("assets/logo.png",height: 29.h,width: 63.w,),

            InkWell(
              onTap: (){
                Overseer.theme=!Overseer.theme;
                setState(() {
                  _themeManager.toggleTheme(Overseer.theme);});},
              child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Text("CareFirst",
                      style: TextStyle(color:Overseer.theme?Colors.white: AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                    SizedBox(height: 5.h,),
                    Text("Available Medicine",
                      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                    SizedBox(height: 25.h,),
                    SizedBox(
                      height: 700.h,
                      child: GridView.builder(
                        itemCount:15,
                          gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1.5/ 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ), itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            Get.to(ProductScreen());
                          },
                          child: Container(
                             margin: EdgeInsets.only(bottom: 5.h,top: 5.h,left: 5.w,right: 5.h),
                            height: 237.h,
                            width: 174.w,
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
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 15.w,top: 15.h,right: 15.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/image17.png",fit: BoxFit.fill,height: 120.h,width: 144.w,),
                                  SizedBox(height: 10.h,),
                                  Text("Panadol",
                                    style: TextStyle(
                                        color: Overseer.theme?Colors.white:AppColors.blackcolor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600
                                    ),),
                                  SizedBox(height: 5.h,),
                                  Text("Tablet",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400
                                    ),),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\$0.1",
                                        style: TextStyle(
                                            color:Overseer.theme?Colors.white: AppColors.blackcolor,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600
                                        ),),
                                      CircleAvatar(backgroundColor: Color(0xff13785A),child: Icon(Icons.arrow_forward_ios,size: 10,),radius: 10.r,)
                                    ],
                                  )
                                ],
                              ),
                            ),

                          ),
                        );
                      }),
                    )

                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
