import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';

import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../widgets/doctor_detail_widget.dart';
import '../../widgets/slot_widget.dart';
import '../chat/chat_screen.dart';

class DoctorDetailScreen extends StatefulWidget {
   DoctorDetailScreen({Key? key}) : super(key: key);

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
    String time="";
    int position=0;
    bool valuefirst = false;
    bool valuesecond = false;
    final Uri _url =  Uri(
      scheme: 'tel',
      path: '',
    );

    // DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300.h,
                    width: 428.w,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/image42.png",),
                            fit: BoxFit.cover),
                      color: AppColors.doctorcolor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r)
                      )

                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 28.h,left: 30.w,right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                         GestureDetector(
                           onTap:(){Get.back();},
                           child: Container(
                             height: 40.h,
                             width: 40.w,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15.r)
                             ),
                             child: const Center(
                               child:  Icon(Icons.arrow_back,color: Colors.black,size: 15,),
                             ),
                           ),
                         ),


                        ],
                      ),
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:170),
                    child: Container(
                      height: 131.h,
                      width: 428.w,
                      decoration: BoxDecoration(
                        color: AppColors.doctorcolor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.r),bottomLeft: Radius.circular(20.r)),
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. John Doe",
                              style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                            SizedBox(height: 5.h,),
                            Text("Physologist" ,style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                    _launchUrl();
                                  },
                                  child: CircleAvatar(radius:15.r,
                                    child: Icon(Icons.phone_rounded,color: AppColors.doctorcolor,size: 15,),backgroundColor: Colors.white,),
                                ),
                                SizedBox(width: 10.w,),
                                InkWell(
                                  onTap: (){

                                      print("**************************8");
                                      Get.to(ChatScreen());


                                    },
                                  child: CircleAvatar(
                                    radius:15.r,
                                    backgroundColor: Colors.white,
                                    child:  const Icon(Icons.message,color: AppColors.doctorcolor,size: 15,),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h,left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 430.h,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Text("About Doctor",
                            style: TextStyle(
                                color: AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 20.h,),
                          Row(
                            children: [
                              Text("Reviews",
                                style: TextStyle(
                                    color: AppColors.blackcolor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600
                                ),),
                              SizedBox(width: 10.w,),
                              const Icon(Icons.star,color: AppColors.secondarycolor,size: 15,),
                              Text("4.9 (120)",
                                style: TextStyle(
                                    color: Colors.black,
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
                          SizedBox(height: 15.h,),
                          Text("Details",style:
                          TextStyle(
                              color: AppColors.blackcolor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 115.h,
                                width: 171.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 2,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 15.h,left: 15.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(Icons.wallet_outlined,color: Colors.black,),
                                      SizedBox(height: 20.h,),
                                      Text("Rs.2400/=",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500
                                        ),),
                                      SizedBox(height: 5.h,),
                                      Text("Doctor Fees",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )


                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 115.h,
                                width: 171.w,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 2,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 15.h,left: 15.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(Icons.location_on,color: Colors.black,),
                                      SizedBox(height: 20.h,),
                                      Text("Rawalpindi",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500
                                        ),),
                                      SizedBox(height: 5.h,),
                                      Text("Location",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400
                                        ),
                                      )


                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15.w,),

                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Text("Schedule",style:
                          TextStyle(
                              color: AppColors.blackcolor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 20.h,),
                          Center(
                            child: Container(
                                padding: const EdgeInsets.only(top: 11, bottom: 11),
                                decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                                child: FlutterDatePickerTimeline(

                                  startDate: DateTime(2020, 07, 01),
                                  endDate: DateTime(2020, 12, 30),
                                  initialSelectedDate: DateTime(2020, 07, 24),
                                  selectedItemBackgroundColor: AppColors.doctorcolor,
                                  onSelectedDateChange: (DateTime? dateTime) {
                                    print(dateTime);
                                  },
                                )),
                          ),
                          SizedBox(height: 20.h,),
                          Text("Available Slots",style:
                          TextStyle(
                              color: AppColors.blackcolor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600
                          ),
                          ),
                          SizedBox(height: 20.h,),
                          SizedBox(
                             height: 50.h,
                            child: ListView.builder(
                              itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                              bool isSelect=(index == position);
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    position=index;
                                  });

                                },
                                child:
                                Container(
                                  margin: EdgeInsets.only(right: 10.w),
                                  height: 42.h,
                                  width: 112.w,
                                  decoration: BoxDecoration(
                                    color: isSelect?AppColors.doctorcolor:Colors.white,
                                      borderRadius: BorderRadius.circular(10.r),
                                      border: Border.all(color: Colors.white)
                                  ),
                                  child: Center(child: Text("09:30 AM",style: TextStyle(color: isSelect?Colors.white:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
                                ),
                              );} ),

                          ),


                        ],
                      ),
                    ),


                        ],
                      ),
                    ),


                  ],
                ),


              ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left:20.w,right: 20.w,top: 10.h,bottom: 10.h),
            width: 368.w,
            height: 50.h,
            decoration: BoxDecoration(
                gradient: AppColors.Gardient1(),
                borderRadius: BorderRadius.circular(15.r)
            ),
            child: Center(child:Text("Book Appointment",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),) ,)
        ),

          ),
        );

  }
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }
}

class tabb {
  bool select;
  String title;

  tabb({
    required this.title,
    required this.select,
  });
}