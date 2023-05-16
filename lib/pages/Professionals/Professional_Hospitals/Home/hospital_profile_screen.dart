import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../../../AppLayers/Streaming/Overseer.dart';
import '../../../../widgets/cart_widget.dart';
import '../Hospital_Setting/hospital_setting_screen.dart';
import 'hospital_edit_screen.dart';


class ProHospitalProfileScreen extends StatefulWidget {

   ProHospitalProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProHospitalProfileScreen> createState() => _ProHospitalProfileScreenState();
}

class _ProHospitalProfileScreenState extends State<ProHospitalProfileScreen> {
  bool isEdit=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Overseer.theme?AppColors.blackcolor :AppColors.bgcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 309.h,
              width: 431.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image56.png")
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,

                      children: [
                        GestureDetector(
                          onTap:(){
                            Get.to(const HospitalSettingScreen());
                          },
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color:  Overseer.theme?AppColors.dimcolor:Colors.white
                            ),
                            child:  Center(
                              child: Icon(Icons.settings,color: Colors.grey,size: 20,),
                            ),

                          ),
                        ),
                        GestureDetector(
                          onTap: (){Get.to(HospitalEditScreen());},
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color:  Overseer.theme?AppColors.dimcolor:Colors.white
                            ),
                            child: const Center(
                              child: Icon(Icons.edit,color: Colors.grey,size: 20,),
                            ),

                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100.h,),
                    Row(
                      children: [
                        CircleAvatar(backgroundImage:AssetImage("assets/image4.png"),radius: 30.r,),
                        SizedBox(width: 15.w,),
                        Column(
                          children: [
                            Text("HumanKind",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                            SizedBox(height: 10.h,),
                            // Container(
                            //   height: 27.h, width: 69.w,
                            //   decoration: BoxDecoration(
                            //       gradient:AppColors.Gardient(),
                            //       borderRadius: BorderRadius.circular(5.r)
                            //   ),
                            //   child: Center(child: Text("follow",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),)),
                            // )

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:  EdgeInsets.only(left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About CMH",style: TextStyle(color:  Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts",
                      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      const Icon(Icons.location_on,color: Color(0xffFB6F93),size: 20,),
                      SizedBox(width: 20.w,),
                      Text("Akshya Nagar 1st, Rammurthy.",
                          style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)),

                    ],
                  ),
                  SizedBox(height: 25.h,),
              SizedBox(
                height: 450.h,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Doctors",
                            style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600)),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isEdit=!isEdit;
                            });
                          },
                          child:  isEdit? Container(
                              margin: EdgeInsets.only(right: 20.w),
                              height: 27.h, width: 69.w,
                              decoration: BoxDecoration(
                                  gradient:Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                                  borderRadius: BorderRadius.circular(5.r)
                              ),
                              child:
                               Center(
                                  child: Text("Cancel",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),))
                          ):
                          Container(
                              margin: EdgeInsets.only(right: 20.w),
                              height: 27.h, width: 73.w,
                              decoration: BoxDecoration(
                                  gradient:Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                                  borderRadius: BorderRadius.circular(5.r)
                              ),
                              child:
                              Center(
                                  child: Text("Edit",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),))
                          )
                        )

                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Row(
                      children: [
                        isEdit?Container(
                          margin: EdgeInsets.only(right: 10.w,left: 10.w,top: 5.h,bottom: 3.h),
                          height: 134.h,
                          width: 134.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            color:Overseer.theme?AppColors.dimcolor: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundColor: Overseer.theme?AppColors.browncolor1:AppColors.browncolor,radius: 15.r,child: const Icon(Icons.add,color: Colors.white,),),
                              SizedBox(height: 10.h,),
                              Text("Add Doctors",style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontWeight: FontWeight.w400,fontSize: 10.sp),)
                            ],
                          ),
                        ):const SizedBox(),
                        SizedBox(
                          height: 150.h,
                          width: isEdit?240.w:395.w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context,index){
                                return  Container(
                                  padding: EdgeInsets.only(top: 10.h),
                                  margin: EdgeInsets.only(right: 10.w,left: 10.w,top: 5.h,bottom: 3.h),
                                  height: 134.h,
                                  width: 134.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 0,
                                          blurRadius: 2,
                                          offset: const Offset(0, 0), // changes position of shadow
                                        ),
                                      ],

                                      color: Overseer.theme?AppColors.dimcolor:Colors.white,
                                      borderRadius: BorderRadius.circular(20.r)
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(backgroundImage:const AssetImage("assets/image9.png"),radius: 30.r,),

                                        ],
                                      ),
                                      SizedBox(height: 20.h,),
                                      Text("Dr.Arshad",
                                        style: TextStyle(color: Overseer.theme?AppColors.lightcolor:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                      Text("Urologist",
                                        style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pharmacy",
                            style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600)),
                        Container(
                          margin: EdgeInsets.only(right: 20.w),
                          height: 27.h, width: 69.w,
                          decoration: BoxDecoration(
                              gradient:Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                              borderRadius: BorderRadius.circular(5.r)
                          ),
                          child: Center(child: Text("Edit",style: TextStyle(fontSize: 12.sp, fontWeight:FontWeight.w500,color: Colors.white),)),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Container(
                      padding: EdgeInsets.only(top: 10.h),
                      margin: EdgeInsets.only(right: 250.w,left: 10.w,top: 5.h,bottom: 3.h),
                      height: 134.h,
                      width: 134.w,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 2,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],

                          color: Overseer.theme?AppColors.dimcolor:Colors.white,
                          borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundImage:const AssetImage("assets/image4.png"),radius: 30.r,),

                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Text("Midlife",
                            style: TextStyle(color:Overseer.theme?AppColors.lightcolor: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                          Text("Islamabad",
                            style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Text("Post",
                      style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w400),),SizedBox(height: 10.h,),
                    Container(
                      margin: EdgeInsets.only(left: 10.w,right: 10.w),
                      height: 136.h,
                      width: 368.w,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(0, 0), // changes position of shadow
                          ),
                        ],
                        color: Overseer.theme?AppColors.dimcolor:Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child:Padding(
                        padding: EdgeInsets.only(top:20.h,left: 20.w,right: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Whats Happening",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            SizedBox(height: 25.h,),
                            const Divider(thickness: 1,color: Colors.grey,),
                            SizedBox(height: 15.h,),
                            Row(
                              children:  [
                                 Icon(Icons.image,color: Overseer.theme?AppColors.browncolor1:AppColors.secondarycolor,size: 20,),
                                const Spacer(),
                                Container(
                                  height: 30.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                      gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                                      borderRadius: BorderRadius.circular(15.r)
                                  ),
                                  child: Center(
                                    child: Text("Post",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  ),
                                )

                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h,),
                    const CartWidget(
                      image: 'assets/image11.png',
                      text: 'Covid - 19 Cases', subtitle: '20 min ago',),

                  ],
                ),
              )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
