import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../theme/theme_manager.dart';
import '../../../utils/colors.dart';
import '../../../widgets/appbar_widget.dart';
import 'medicine_screen.dart';
ThemeManager _themeManager = ThemeManager();
class PharmaciesScreen extends StatefulWidget {
  const PharmaciesScreen({Key? key}) : super(key: key);

  @override
  State<PharmaciesScreen> createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
        body: Padding(
          padding:EdgeInsets.only(top: 17.h,left: 30.w,right: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
               AppBarWidget(subtitle: '', title: 'Pharmacies ',
                   btn:    InkWell(
                     onTap: (){
                       Overseer.theme=!Overseer.theme;
                       print('rrr${Overseer.theme}rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

                       setState(() {
                         _themeManager.toggleTheme(Overseer.theme);

                       });


                     },
                     child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)),
              SizedBox(height: 30.h,),
              Expanded(
                child: GridView.builder(
                  itemCount: 20,
                    gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 20,
                    mainAxisSpacing: 20,

                ), itemBuilder:(context,index){
                  return  GestureDetector(
                    onTap: (){
                      Get.to(const MedicineScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 5.w,left: 5 .w,top: 5.h,bottom: 5.h),
                      padding: EdgeInsets.only(top: 20.h),
                      height: 134.h,
                      width: 174.w,
                      decoration: BoxDecoration(
                          color: Overseer.theme?AppColors.dimcolor:Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],

                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundImage:const AssetImage("assets/image4.png"),radius: 30.r,),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Text("CareFirst",
                            style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 14.sp,fontWeight: FontWeight.w500),),
                          Text("Rawalpindi",
                            style: TextStyle(color: Colors.grey,fontSize: 12.sp,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  );
                }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
