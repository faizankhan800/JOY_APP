
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
   const AppTextField({Key? key,required this.textController,required this.hintText,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(      child: TextField(
        controller:textController,
        decoration: InputDecoration(
        suffixIcon: Icon(icon),
        label:Text( hintText,style: TextStyle(
        color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),

        ),
      ),
    ));
  }
}
