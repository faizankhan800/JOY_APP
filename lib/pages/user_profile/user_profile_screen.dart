import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/pages/user_setting/user_setting_screen.dart';

import '../../utils/colors.dart';
import '../../widgets/cart_widget.dart';
class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
             children: [
               Container(
                 height: 292.h,
                 width: 428.w,
                 decoration: BoxDecoration(
                     borderRadius: const BorderRadius.only(bottomLeft: Radius.elliptical(65, 45),bottomRight: Radius.elliptical(150, 40)
                     ),
                     gradient: AppColors.Gardient4()
                 ),
                 child: Padding(
                   padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
                   child: Column(
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(),
                           Text("My Profile",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),),
                           Icon(Icons.edit,color: Colors.white,size: 20,)
                         ],
                       ),
                       SizedBox(height: 50.h,),
                       Row(
                         children: [
                           CircleAvatar(backgroundColor: Colors.white,radius: 40.r,backgroundImage: AssetImage("assets/image57.png"),),
                           SizedBox(width: 30.w,),
                           Column(
                             children: [
                               Text("Nouman Imran",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w600),),
                               SizedBox(height: 5.h,),
                               Text("Depression",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),

                             ],
                           )
                         ],
                       ),
                     ],
                   ),
                 ),

               ),
               Positioned(
                   bottom: 0.h,right: 50.w,
                   child:   GestureDetector(
                       onTap: (){
                         Get.to(const UserSettingScreen());
                       },
                       child: CircleAvatar(radius: 20.r,backgroundColor: Colors.white,child: const Icon(Icons.settings,color: Color(0xff8F94FB),),)))
             ],
           ),

            Padding(
              padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 15.h,),
                  Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts rent\n typefaces and layouts",
                      style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 370.h,
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Text("Friends",
                              style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                // Get.to(AllFriendsScreen());

                              },
                              child: Text("See All",
                                style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            ),

                          ],
                        ),
                        SizedBox(height: 15.h,),
                        SizedBox(
                          height: 80.h,
                          child: ListView.builder(
                              itemCount: 15,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return  CircleAvatar(backgroundImage:const AssetImage("assets/image10.png"),radius: 50.r,);
                              }),
                        ),
                        SizedBox(height: 25.h,),
                        Row(
                          children: [
                            Text("Photos",
                              style: TextStyle(color: AppColors.blackcolor,fontSize: 16.sp,fontWeight: FontWeight.w500),),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                // Get.to(AllFriendsScreen());

                              },
                              child: Text("See All",
                                style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            ),

                          ],
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          margin: EdgeInsets.only(left: 5.w,right: 5.w),
                          height: 320.h,
                          width: 368.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 8,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.r)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(top: 15.w,left: 15.w),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/image58.png",height: 172.h,width: 196.w,),
                                    SizedBox(width: 5.w,),
                                    Column(
                                      children: [
                                        Image.asset("assets/image59.png",height: 81.h,width: 132.w,),
                                        SizedBox(height: 15.h,),
                                        Image.asset("assets/image60.png",height: 81.h,width: 132.w,),
                                      ],
                                    )

                                  ],
                                ),
                                SizedBox(height:10.h ,),
                                Image.asset("assets/image61.png",height: 108.h,width: 338.w,),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        Row(
                          children: [
                            Text("posts",
                              style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                            Spacer(),
                            GestureDetector(
                              onTap: (){
                                // Get.to(AllFriendsScreen());

                              },
                              child: Text("See All",
                                style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            ),

                          ],
                        ),
                        SizedBox(height: 15.h,),
                        Container(
                          margin: EdgeInsets.only(left: 5.w,right: 5.w),
                          height: 136.h,
                          width: 368.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 8,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
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
                                const Divider(thickness: 1,),
                                SizedBox(height: 15.h,),
                                Row(
                                  children:  [
                                    Icon(Icons.image,color: Color(0xff03DAC6),size: 20,),
                                    Spacer(),
                                    Container(

                                      height: 30.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                          gradient: AppColors.Gardient(),
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
                        SizedBox(height: 25.h,),
                        const CartWidget(
                          image: 'assets/image11.png',
                          text: 'Covid - 19 Cases', subtitle: '20 min ago',)
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
