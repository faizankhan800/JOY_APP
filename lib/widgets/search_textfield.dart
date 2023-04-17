import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController=TextEditingController();
    return  Container(
      height: 50.h,
      width: 368.w,
      child: TextField(
        controller: searchController,
        decoration:  InputDecoration(
            suffixIcon: const Icon(Icons.search,size: 20,),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search ',
            hintStyle: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400)
        ),
      ),
    );
  }
}
