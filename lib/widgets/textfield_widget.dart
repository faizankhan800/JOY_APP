import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_of_you/AppLayers/Streaming/Overseer.dart';

import '../utils/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController textController;
  const TextFieldWidget({Key? key,required this.text,required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   SizedBox(
        child: TextField(
          style: TextStyle(color:Overseer.theme?AppColors.lightcolor:AppColors.blackcolor),
          controller:textController,
        decoration:  InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintStyle: TextStyle(color: Overseer.theme?Colors.grey:Colors.black),
        label:Text( text,style: TextStyle(
            color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),

    ),


    ),
    ),
    );
  }
}
