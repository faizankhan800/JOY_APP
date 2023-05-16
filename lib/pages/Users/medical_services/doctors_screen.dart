import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:journey_of_you/utils/colors.dart';

import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../theme/theme_manager.dart';
import '../../../widgets/appbar_widget.dart';
import '../../../widgets/doctors_list_widget.dart';
ThemeManager _themeManager = ThemeManager();
class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 20.h,left: 30.w,right: 30.w),
                child:  AppBarWidget(
                  subtitle: '', title: 'Appointments',
                    btn:    InkWell(
                      onTap: (){
                        Overseer.theme=!Overseer.theme;
                        print('rrr${Overseer.theme}rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

                        setState(() {
                          _themeManager.toggleTheme(Overseer.theme);

                        });


                      },
                      child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)
                ),
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
