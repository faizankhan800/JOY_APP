import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

import '../pages/Users/chat/add_friend_screen.dart';
import '../pages/Users/chat/friend_request_screen.dart';
class FloatButton extends StatefulWidget {
  const FloatButton({Key? key,}) : super(key: key);



  @override
  _FloatButtonState createState() => _FloatButtonState();
}

class _FloatButtonState extends State<FloatButton> {


  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      labelsBackgroundColor: AppColors.secondarycolor,
        labelsStyle: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w400),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.person,color: Colors.white,),
            // foregroundColor: Colors.black,
            backgroundColor: AppColors.secondarycolor,
            label: 'Requests',
            onPressed: () {

              setState(() {
                Get.to(const AddFriendScreen());
              });
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.person_add_rounded,color: Colors.white,),
            // foregroundColor: Colors.white,
            backgroundColor: AppColors.secondarycolor,
            label: 'Add friends',

            onPressed: () {
              setState(() {
                Get.to(const RequestScreen());
              });
            },
          ),
        ],
        closedForegroundColor: AppColors.browncolor,
        openForegroundColor: Colors.orange,
        closedBackgroundColor:AppColors.browncolor,

      openBackgroundColor: AppColors.secondarycolor,
        child:   const Icon(Icons.message_rounded,color: Colors.white,size: 20,),
      );

  }
}