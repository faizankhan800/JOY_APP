import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/appbar_widget.dart';
import '../../widgets/builder_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      // bottomNavigationBar: BottomNavigation(),
      body: Padding(
        padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(subtitle: "Find people with same Condition", title: "Hello Nouman"),
              SizedBox(height: 25.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Friend Suggestion",
                  style: TextStyle(color: AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                Text("See All",
                  style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),)
              ],),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 290.h,
                child: ListView.builder(
                  itemCount: 20,
                    itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.only(left: 10.w,right: 10.w),
                    width: 368.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(backgroundImage:const AssetImage("assets/image3.png"),radius: 25.r,),
                        Padding(
                          padding: EdgeInsets.only(left: 10.w,top: 20.h),
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
                        const CircleAvatar(backgroundColor:AppColors.browncolor,child: Icon(Icons.person_add_alt,size: 20,),)
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 25.h,),
              const BuilderWidget(text: 'Popular Doctors', subtext: 'Pharmacies',)
            ],
          ),
        ),
      ),
    );
  }
}
