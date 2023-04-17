import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../utils/colors.dart';
import '../../chat/chat_screen.dart';
import '../profile/edit_profile.dart';
import 'appoinment_history.dart';

class ScheduleScreen extends StatelessWidget {
   ScheduleScreen({Key? key}) : super(key: key);
  final Uri _url =  Uri(
    scheme: 'tel',
    path: '',
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.bgcolor,
          body: Column(
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
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
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
                              GestureDetector(
                                onTap: (){Get.to(const EditProfileScreen());},
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.r)
                                  ),
                                  child: const Center(
                                    child:  Icon(Icons.edit,color: Colors.black,size: 15,),
                                  ),
                                ),
                              )

                            ],
                          ),



                        ],
                      ),
                    ),

                  ),

                  Padding(
                    padding:  EdgeInsets.only(top:200.h),
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
                padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 30.h),
                child: Column(
                  children: [
                    Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10.r,
                        ),
                      ),
                      child: TabBar(

                        // give the indicator a decoration (color and border radius)
                        indicator: BoxDecoration(

                          borderRadius: BorderRadius.circular(
                            10.r,
                          ),
                          gradient: AppColors.Gardient(),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(
                            text: 'Schedule',
                          ),

                          Tab(
                            text: 'History',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 450.h,
                      child: TabBarView(

                        children: [
                          // first tab bar view widget
                         SingleChildScrollView(
                           physics: const BouncingScrollPhysics(),
                           child: Padding(
                             padding:  EdgeInsets.only(top:25.h,left: 30.w),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Text(" Appointment",
                                 style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                                 SizedBox(height: 20.h,),
                                 Text(" Ongoing",
                                   style: TextStyle(color: AppColors.blackcolor,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                                 SizedBox(height: 15.h,),
                                 Container(
                                   padding: EdgeInsets.only(left: 20.w),
                                   margin: EdgeInsets.only(right: 10.w,left: 10.w),
                                   height: 80.h,
                                   width: 370.w,
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
                                       borderRadius: BorderRadius.circular(20.r)
                                   ),
                                   child: Row(
                                     children: [
                                       CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 30.r,),
                                       SizedBox(width: 15.w,),
                                       Text("Started 54m ago\n Aidda Bugg.",
                                         style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),)

                                     ],
                                   ),
                                 ),
                                 SizedBox(height: 20.h,),
                                 Text(" Upcoming",
                                   style: TextStyle(color: AppColors.blackcolor,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                                 SizedBox(height: 15.h,),
                                SizedBox(
                                  height: 165.h,
                                  child: ListView.builder(
                                      itemCount: 2,
                                      itemBuilder: (context,index){
                                    return  Container(
                                      margin: EdgeInsets.only(bottom: 10.h,left: 10.w,right: 10.w,top: 5.h),
                                      padding: EdgeInsets.only(left: 20.w),
                                      height: 80.h,
                                      width: 370.w,
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
                                          borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      child: Row(
                                        children: [
                                          CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 30.r,),
                                          SizedBox(width: 15.w,),
                                          Padding(
                                            padding:  EdgeInsets.only(top:20.h,left: 15.w),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("9:00 AM - 2:00 PM",
                                                  style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                                Text("Today",
                                                  style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    );
                                  }),
                                ),
                                 SizedBox(height: 15.h,),
                                 Text("Pending Approval",
                                   style: TextStyle(color: AppColors.blackcolor,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                                 SizedBox(height: 20.h,),


                                 SizedBox(
                                   height:270.h,
                                   child: ListView.builder(
                                       itemCount: 2,
                                       itemBuilder: (context,index){
                                         return Container(
                                           padding: EdgeInsets.only(left: 10.w,right: 10.w),
                                           margin: EdgeInsets.only(bottom: 15.h,left: 10.w,right: 10.w,top: 5.h),
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
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(20.r)
                                           ),
                                           child: Row(
                                             children: [
                                               CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 25.r,),
                                               Padding(
                                                 padding: EdgeInsets.only(left: 15.w,top: 20.h),
                                                 child: Column(
                                                   crossAxisAlignment: CrossAxisAlignment.start,

                                                   children: [
                                                     Text("9:00 AM - 2:00 PM",style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                                     SizedBox(height: 10.h,),
                                                     Text("10/08/2023",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                                                   ],
                                                 ),
                                               ),
                                               const Spacer(),
                                               CircleAvatar(backgroundColor:Colors.grey,child: Icon(Icons.clear,size: 15,color: Colors.white,),radius: 15.r,),
                                               SizedBox(width: 8.w,),
                                               CircleAvatar(backgroundColor:AppColors.browncolor,child: Icon(Icons.check,size: 15,),radius: 15.r,),
                                             ],
                                           ),
                                         );
                                       }),
                                 )
                               ],
                             ),
                           ),
                         ),

                          // second tab bar view widget
                          Padding(
                            padding:  EdgeInsets.only(top:25.h,left: 30.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Appointment History",
                                  style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                                SizedBox(height: 15.h,),
                                SizedBox(
                                  height:370.h,
                                  child: ListView.builder(
                                      itemCount: 20,
                                      itemBuilder: (context,index){
                                        return GestureDetector(
                                          onTap: (){
                                            Get.to(const AppointmentHistoryScreen(),transition: Transition.fade);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(left: 10.w,right: 10.w),
                                            margin: EdgeInsets.only(bottom: 15.h,left: 10.w,right: 10.w,top: 5.h),
                                            width: 365.w,
                                            height: 50.h,
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
                                                borderRadius: BorderRadius.circular(20.r)
                                            ),
                                            child:Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Ali Hamza",style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                                CircleAvatar(radius: 10.r,
                                                  backgroundColor: AppColors.browncolor,
                                                  child: const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 10,),)
                                              ],
                                            )
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
   Future<void> _launchUrl() async {
     if (!await launchUrl(_url)) {
       throw Exception('Could not launch $_url');
     }
   }
}
