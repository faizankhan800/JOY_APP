import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String _dropdownValue = 'Select Gender';
  @override
  Widget build(BuildContext context) {

    return  DropdownButton<String>(isExpanded: true,
      hint: const Text("Gender"),
      value: _dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.grey,fontSize: 14.sp),
      onChanged: ( newValue) {
        setState(() {
          _dropdownValue = newValue!;
          print(newValue);
        });
      },
      items: <String>['Select Gender','Male', 'Female',]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );




  }
}
