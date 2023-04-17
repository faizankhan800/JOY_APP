import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../widgets/appbar_widget.dart';
import '../../widgets/doctors_list_widget.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 20.h,left: 30.w,right: 30.w),
                child: const AppBarWidget(
                  subtitle: '', title: 'Appointments',),
              ),
              Padding(
                padding:EdgeInsets.only(top: 25.h,left: 30.w,right: 30.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 610.h,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context,index){
                        return DoctorList();
                      }),
                    )

                  ],
                ),
              )


            ],

          ),
        ),

      ),
    );
  }
}
