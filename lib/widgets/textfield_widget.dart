import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController textController;
  const TextFieldWidget({Key? key,required this.text,required this.textController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   SizedBox(
        child: TextField(
          controller:textController,
        decoration:  InputDecoration(
          hintStyle: TextStyle(color: Colors.black),
        label:Text( text,style: TextStyle(
            color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),

    ),


    ),
    ),
    );
  }
}
