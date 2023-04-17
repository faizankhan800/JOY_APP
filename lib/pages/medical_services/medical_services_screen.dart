import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/pharmacies/pharmacies_screen.dart';

import '../../utils/colors.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/builder_widget.dart';

import '../User_Blood_Bank/blood_bank_screen.dart';
import '../hospitals/hospitals_screen.dart';
import 'doctors_screen.dart';

class MedicalServicesScreen extends StatelessWidget {
  const MedicalServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 25.h,left: 30.w,right: 30.w),
                child: const AppBarWidget(subtitle: 'We Care for your health', title: 'Medical Services',),
              ),
              SizedBox(height: 20.h,),
           SizedBox(
             height: 540.h,
             child: ListView(
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 20.w,right: 20.w),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       GestureDetector(
                         onTap:(){
                           Get.to((const DoctorScreen()));
                         },
                         child: Container(height: 160.h,width: 368.w,
                           decoration: const BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage("assets/image46.png")
                               )
                           ),
                           child:  Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Center(child: Text("Appointments",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                               ],
                             ),
                           ),

                         ),
                       ),
                       SizedBox(height: 20.h,),

                       Text("Services We Offer",
                         style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                       SizedBox(height: 15.h,),
                       Row(
                         children: [
                           GestureDetector(
                             onTap: (){Get.to((const PharmaciesScreen()));},
                             child: Container(
                               height: 130.h,
                               width: 174.w,
                               decoration: const BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/image47.png",),
                                 ),
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(20.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Center(child: Text("Pharmacies",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                                   ],
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 20.w,),
                           GestureDetector(
                             onTap: (){
                               Get.to(BloodBankScreen());
                             },
                             child: Container(
                               height: 130.h,
                               width: 174.w,
                               decoration: const BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/image48.png",),
                                 ),
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(20.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Center(child: Text("Blood Bank",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                                   ],
                                 ),
                               ),
                             ),
                           ),

                         ],
                       ),
                       SizedBox(height: 20.h,),
                       Row(
                         children: [
                           GestureDetector(
                             onTap: (){Get.to((const HospitalScreen()));},
                             child: Container(
                               height: 130.h,
                               width: 174.w,
                               decoration: const BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/image49.png",),
                                 ),
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(20.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Center(child: Text("Hospital",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                                   ],
                                 ),
                               ),
                             ),
                           ),
                           SizedBox(width: 20.w,),
                           Container(
                             height: 130.h,
                             width: 174.w,
                             decoration: const BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage("assets/image50.png",),
                               ),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Center(child: Text("Need Help?",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                                 ],
                               ),
                             ),
                           ),

                         ],
                       ),
                       SizedBox(height: 25.h,),
                       const BuilderWidget(text: 'Popular Doctors', subtext: 'Pharmacies',)
                     ],
                   ),
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
