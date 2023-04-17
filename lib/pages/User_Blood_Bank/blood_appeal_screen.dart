import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/colors.dart';
import '../../widgets/baar_widget.dart';
class BloodAppealScreen extends StatefulWidget {
  const BloodAppealScreen({Key? key}) : super(key: key);

  @override
  State<BloodAppealScreen> createState() => _BloodAppealScreenState();
}

class _BloodAppealScreenState extends State<BloodAppealScreen> {
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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding:  EdgeInsets.only(top: 50.h,left: 25.w,right: 25.w),
                  child: Column(
                    children: [
                       BarWidget(title: 'Find a Donor', subtitle: 'Give the Gift of LIfe',),
                      SizedBox(height: 30.h,),
                      Container(
                        height: 42.h,
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
                              15.r,
                            ),
                            gradient: AppColors.Gardient3(),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          tabs: const [
                            Tab(
                              text: 'Blood Bank',
                            ),

                            Tab(
                              text: 'Donor',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Column(
                children: [

                  SizedBox(height: 30.h,),
                  SizedBox(
                    height: 600.h,
                    child: TabBarView(
                      children: [
                        ListView.builder(
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
                        ListView.builder(
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
                      ],
                    ),
                  )

                ],
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
