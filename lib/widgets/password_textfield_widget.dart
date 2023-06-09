import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppLayers/Streaming/Overseer.dart';
import '../utils/colors.dart';

class PassTextFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController textController;
  const PassTextFieldWidget({Key? key,required this.text,required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   SizedBox(
        child: TextField( style: TextStyle(color: Overseer.theme?AppColors.lightcolor:Colors.black), obscureText: true,
          controller:textController,
        decoration:  InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          label:Text( text,style: TextStyle(
            color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),

    ),


    ),
    ),
    );
  }
}
