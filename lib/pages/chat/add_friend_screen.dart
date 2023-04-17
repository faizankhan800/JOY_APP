import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../widgets/search_textfield.dart';
import '../home/notification_screen.dart';

class AddFriendScreen extends StatelessWidget {
  const AddFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Friends",style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),

      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w),
        child: SingleChildScrollView(

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find New Friends",
                    style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600)),
                SizedBox(height: 15.h,),
                const SearchTextField(),
                SizedBox(height: 20.h,),
                Text("Result Founds",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w500)),
                SizedBox(height: 15.h,),
                SizedBox(
                  height: 700.h,
                  child: ListView.builder(
                      itemCount: 20,
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
                              color: Colors.white,
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
                                    Text("Arshad Khan",style: TextStyle(color: AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 10.h,),
                                    Text("Cancer",style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                                  ],
                                ),
                              ),
                              const Spacer(),
                              CircleAvatar(backgroundColor:AppColors.greencolor,child: Icon(Icons.message,size: 15,color: Colors.white,),radius: 15.r,),
                              SizedBox(width: 8.w,),
                              CircleAvatar(backgroundColor:AppColors.browncolor,child: Icon(Icons.person,size: 15,),radius: 15.r,),


                            ],
                          ),
                        );
                      }),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
