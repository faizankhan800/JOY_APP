import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggleButtonWidget1 extends StatefulWidget {
  @override
  _ToggleButtonWidget1State createState() => _ToggleButtonWidget1State();
}

class _ToggleButtonWidget1State extends State<ToggleButtonWidget1> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return  FlutterSwitch(
            width: 50.w,
            height: 25.h,
            valueFontSize: 15.sp,
            toggleSize: 14.0,
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.grey,
            value: status,
            borderRadius: 50.r,
            padding: 3.0,
            // showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
    );



  }
}