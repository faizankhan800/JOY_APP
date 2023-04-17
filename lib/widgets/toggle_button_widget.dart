import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return  FlutterSwitch(
            width: 80.w,
            height: 40.h,
            valueFontSize: 15.sp,
            toggleSize: 20.0,
            activeColor: Colors.deepOrange,
            inactiveColor: Colors.black,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
    );



  }
}