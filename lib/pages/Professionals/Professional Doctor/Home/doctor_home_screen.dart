import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../theme/theme_manager.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/doctor_detail_widget.dart';
import '../../../../widgets/medical_services_widget.dart';
import '../../../../widgets/search_textfield.dart';
import '../Details/doctor_detail_screen.dart';
import '../Medicines/doctor_pharmacy_screen.dart';
import '../doctor_setting/doctor_setting_screen.dart';

ThemeManager _themeManager = ThemeManager();

class DoctorHomeScreen extends StatefulWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  State<DoctorHomeScreen> createState() => _DoctorHomeScreenState();
}

class _DoctorHomeScreenState extends State<DoctorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 20.h,left: 30.w,right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap:(){
                              Get.to(DoctorSettingScreen());
                            },
                            child: Icon(Icons.settings,size: 20,color: Overseer.theme?Colors.white:Colors.black,)),
                        Image.asset("assets/logo.png",height: 29.h,width: 63.w,),

                        InkWell(
                          onTap: (){
                            Overseer.theme=!Overseer.theme;
                            setState(() {
                              _themeManager.toggleTheme(Overseer.theme);});},
                          child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)
                      ],
                    ),
                    SizedBox(height: 45.h,),
                    Text("Hello John Doe",
                      style: TextStyle(color:Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 24.sp,fontWeight: FontWeight.w600),),
                    SizedBox(height: 5.h,),
                    Text("Phycologist",
                      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20.h,),
                    const SearchTextField(),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.only(left: 20.w,right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Manage",
                      style: TextStyle(color:Overseer.theme?Colors.white: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                    SizedBox(height: 15.h,),
                    Row(
                      children: [
                        GestureDetector(
                            onTap:(){
                              Get.to(( DoctorDetailScreen2()));
                            },
                            child: const ServicesWidget(title: 'Appointments', subtitle: 'Schedule Appointments', image: 'assets/image2.png', color:Colors.white, bgimage: 'assets/image64.png',)),
                        SizedBox(width: 20.w,),
                        GestureDetector(
                            onTap: (){
                              Get.to((const DoctorPharmaciesScreen()));
                            },
                            child:  ServicesWidget(title: 'Pharmacies', subtitle: 'Manage your Pharmacy', image: 'assets/image13.png', color: AppColors.greencolor, bgimage: 'assets/image65.png',)),

                      ],
                    ),
                    SizedBox(height: 25.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pending Appointment",
                        style: TextStyle(color: Overseer.theme?Colors.white:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                      Text("View All",
                        style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)
                    ],
                  ),
                    SizedBox(height: 15.h,),
                    SizedBox(
                      height:180.h,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context,index){
                            return Container(
                              padding: EdgeInsets.only(left: 10.w,right: 10.w),
                              margin: EdgeInsets.only(bottom: 10.h,left: 10.w,right: 10.w,top: 5.h),
                              width: 368.w,
                              height: 80.h,
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
                              child: Row(
                                children: [
                                  CircleAvatar(backgroundImage:const AssetImage("assets/image9.png"),radius: 25.r,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w,top: 20.h),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text("9:00 AM - 2:00 PM",style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                        SizedBox(height: 10.h,),
                                        Text("10/08/2023",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  CircleAvatar(backgroundColor:Color(0xffF08265),child: Icon(Icons.clear,size: 15,color: Colors.white,),radius: 15.r,),
                                  SizedBox(width: 8.w,),
                                  CircleAvatar(backgroundColor:Colors.blue,child: Icon(Icons.check,size: 15,),radius: 15.r,),


                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text("Reviews",
                          style: TextStyle(
                              color: Overseer.theme?Colors.white:AppColors.blackcolor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600
                          ),),
                        SizedBox(width: 10.w,),
                        const Icon(Icons.star,color: AppColors.secondarycolor,size: 15,),
                        Text("4.9 (120)",
                          style: TextStyle(
                              color: Overseer.theme?Colors.white:Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 140.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context,index){
                            return const DoctorDetailWidget();
                          }),
                    ),
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
