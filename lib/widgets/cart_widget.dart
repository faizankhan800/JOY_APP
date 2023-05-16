import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppLayers/Streaming/Overseer.dart';
import '../utils/colors.dart';

class CartWidget extends StatelessWidget {
  final String text;
  final String image;
  final String subtitle;
  const CartWidget({Key? key,required this.image,required this.text,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5.w,right: 5.w,bottom: 20.h,top: 10.h),
        height: 343.h,
        width: 368.w,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 2,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
            color: Overseer.theme?AppColors.dimcolor:Colors.white,
            borderRadius: BorderRadius.circular(20.r)
        ),
        child:Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage:const AssetImage("assets/image10.png"),radius: 25.r,),
                  SizedBox(width: 15.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Kate",style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w600),),
                      SizedBox(height: 5.h,),
                      Text(subtitle,style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w500))
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert_outlined,color: Colors.grey,size: 15,)
                ],
              ),
              SizedBox(height: 20.h,),
              Text(text,
                style: TextStyle(color: Overseer.theme?Colors.white:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w600),

              ),
              SizedBox(height: 15.h,),
              Image.asset(image,height: 137.h,width: 335.w,fit: BoxFit.fill,),
              SizedBox(height: 15.h,),
              Row(
                children: [
                  CircleAvatar(radius: 15.r,backgroundColor: Overseer.theme?AppColors.browncolor1:AppColors.browncolor,
                    child: Icon(Icons.thumb_up_off_alt,size: 10,color: Colors.white,),),
                  SizedBox(width: 10.w,),
                  Text("20K Likes",
                    style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  CircleAvatar(radius: 15.r,backgroundColor:Overseer.theme?AppColors.browncolor1: AppColors.browncolor,
                    child: Icon(Icons.message,size: 10,color: Colors.white,),),

                ],
              )

            ],
          ),
        )
    );
  }
}
