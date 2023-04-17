import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddStoryWidget extends StatelessWidget {
  const AddStoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
        // height: 50.h,
        // width: 90.w,
        // decoration: BoxDecoration(color: Colors.white,
        //   borderRadius: BorderRadius.circular(10.r),
        // ),
        child: Stack(
          children: [
            Image.asset("assets/image10.png",fit: BoxFit.cover),
            Positioned(
                bottom: 20.h,
                left: 56.w,
                child: CircleAvatar(radius: 10.r,backgroundColor: Colors.white,child: Icon(Icons.play_arrow_outlined,size: 12,),))
          ],
        )
    );;
  }
}
