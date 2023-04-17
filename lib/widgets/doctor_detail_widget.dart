import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class DoctorDetailWidget extends StatelessWidget {
  const DoctorDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10.w,left: 10.w,),
          height: 140.h,
          width: 228.w,
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
          child: Column(
            children: [
              ListTile(
                leading: Image.asset("assets/image3.png",height: 50.h,width: 50.w,),
                title: Text("Aida Bugg",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                    )
                ),
                subtitle: Text("1 day ago",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    )

                ),
                trailing: Container(
                  height: 15.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: AppColors.greencolor,
                      borderRadius: BorderRadius.circular(4.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star,color: AppColors.secondarycolor,size: 8,),
                      Text("5.0",
                        style: TextStyle(
                            color: AppColors.blackcolor,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h,),
              Text("Dummy text is also used to demonstrate\n the appearance of",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400
                ),

              )
            ],
          ),
        )
      ],
    );
  }
}
