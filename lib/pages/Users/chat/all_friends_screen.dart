import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/AppLayers/Streaming/Overseer.dart';
import 'package:journey_of_you/widgets/search_textfield.dart';
import '../../../utils/colors.dart';
import 'add_friend_screen.dart';
import 'friend_request_screen.dart';

class AllFriendsScreen extends StatelessWidget {
  const AllFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
      appBar:AppBar(
        backgroundColor: Overseer.theme?AppColors.dimcolor:Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Friends",style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Friends",style: TextStyle(color:Overseer.theme?Colors.white: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 15.h,),
            SearchTextField(),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(AddFriendScreen());
                  },
                  child: Container(
                    height: 130.h,
                    width: 174.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image43.png",),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Finds Friends",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){  Get.to(const RequestScreen());},
                  child: Container(
                    height: 130.h,
                    width: 174.w,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image45.png",),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text("Friends Request",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h,),
            Text("Yours Friends",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w500),),
            SizedBox(height: 15.h,),
            SizedBox(
              height:430.h,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(bottom: 15.h,left: 10.w,right: 10.w,top: 5.h),
                      padding: EdgeInsets.only(left: 10.w,right: 10.w),
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
                          color:Overseer.theme?AppColors.dimcolor: Colors.white,
                          borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundImage:const AssetImage("assets/image9.png"),radius: 25.r,),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w,top: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Arshad Khan",style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                SizedBox(height: 10.h,),
                                Text("Cancer",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                          const Spacer(),
                          // const CircleAvatar(backgroundColor:AppColors.browncolor,child: Icon(Icons.person_add_alt,size: 20,),)
                        ],
                      ),
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}
