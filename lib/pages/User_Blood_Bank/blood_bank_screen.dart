import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/colors.dart';
import '../../widgets/baar_widget.dart';
import '../../widgets/blood_dialougebox_widget.dart';
import 'blood_appeal_screen.dart';
import 'donate_blood_screen.dart';
class BloodBankScreen extends StatefulWidget {
  const BloodBankScreen({Key? key}) : super(key: key);

  @override
  State<BloodBankScreen> createState() => _BloodBankScreenState();
}

class _BloodBankScreenState extends State<BloodBankScreen> {
  String _dropdownValue = 'Select City';
  final Uri _url =  Uri(
    scheme: 'tel',
    path: '',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           child: Padding(
             padding:  EdgeInsets.only(top: 50.h,right: 25.w,left: 25.w),
             child: Column(
               children: [
                  const BarWidget(title: 'Blood Banks', subtitle: 'Give the Gift of LIfe',),
                 SizedBox(height: 25.h,),
                 Container(
                     height: 153.h,
                     width: 368.w,
                     decoration:  const BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage("assets/image53.png")
                       ),
                     ),
                     child: Padding(
                       padding:  EdgeInsets.only(top: 20.h,right: 20.w,left: 20.w),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Choose City",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                           SizedBox(height: 10.h,),
                           DropdownButton<String>(isExpanded: true,
                             hint: const Text("City",style: TextStyle(color: Colors.grey),),
                             dropdownColor: Colors.grey.shade400,

                             value: _dropdownValue,
                             icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                             iconSize: 24,
                             elevation: 16,
                             style: TextStyle(color: Colors.grey,fontSize: 14.sp),
                             onChanged: ( newValue) {
                               setState(() {
                                 _dropdownValue = newValue!;
                                 print(newValue);
                               });
                             },
                             items: <String>['Select City','Lahore', 'Karachi','Islamabad']
                                 .map<DropdownMenuItem<String>>((String value) {
                               return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value,style: const TextStyle(color: Colors.white),),
                               );
                             }).toList(),
                           ),
                           SizedBox(height: 10.h,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("Choose Your Blood Group",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),),
                               GestureDetector(
                                 onTap:(){
                                   (BloodAlertBox(context));
                                 },
                                 child: Container(
                                   height: 30.h,
                                   width: 56.w,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(15.r),
                                       color: Colors.white
                                   ),
                                   child: Center(
                                       child:Text("A+",style: TextStyle(color: Colors.grey,fontSize: 18.sp,fontWeight: FontWeight.w600),)
                                   ),
                                 ),
                               )
                             ],
                           )
                         ],
                       ),
                     )
                 ),
                 SizedBox(height: 20.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     GestureDetector(
                       onTap: (){
                         Get.to(const DonateBloodScreen());
                       },
                       child: Container(
                         height: 130.h,
                         width: 174.w,
                         decoration: const BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage("assets/image54.png",),
                           ),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Center(child: Text("Donate Blood",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                             ],
                           ),
                         ),
                       ),
                     ),
                     GestureDetector(
                       onTap: (){Get.to(const BloodAppealScreen());},
                       child: Container(
                         height: 130.h,
                         width: 174.w,
                         decoration: const BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage("assets/image55.png",),
                           ),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Center(child: Text("Blood Appeal",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 30.h,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Blood Banks Near You",style: TextStyle(color:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                     Text("See All",style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                   ],
                 ),
               ],
             ),
           ),
         ),
          SizedBox(height: 25.h,),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return Container(
                    margin:  EdgeInsets.only(bottom: 20.h,left: 25.w,right: 25.w),
                    height: 97.h,
                    width: 368.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 15.h, left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Brennan Fadel", style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Blood Group: A+", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),),
                              GestureDetector(
                                onTap: (){
                                  _launchUrl();
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 95.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    gradient: AppColors.Gardient3(),
                                  ),
                                  child: Center(child: Text("Contact",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),),),
                                ),
                              )
                            ],
                          ),
                          Text("City: Lahore", style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
