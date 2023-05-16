import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:journey_of_you/pages/Splash/splash_screen.dart';
import 'package:journey_of_you/AppLayers/Streaming/Provider.dart' as pro;
import 'package:journey_of_you/pages/Users/feeds/feed_screen.dart';
import 'package:journey_of_you/theme/theme_constants.dart';
import 'package:journey_of_you/theme/theme_manager.dart';
import 'package:journey_of_you/utils/app_constant.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/add_story_widget.dart';
import 'package:journey_of_you/widgets/appbar_widget.dart';
import 'package:journey_of_you/widgets/cart_widget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AppLayers/Streaming/Overseer.dart';
Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener(){
    if(mounted){
      setState(() {

      });
    }
  }




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return  pro.Provider(
          data: Overseer(),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'joy',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
            // darkTheme: darkTheme,
            themeMode: _themeManager.themeMode,
            // You can use the library anywhere in the app even in theme

            home: SplashScreen(),
          ),
        );
      },
    );
  }
}


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
   /* TextTheme _textTheme = Theme.of(context).textTheme;
    bool Overseer.theme = Theme.of(context).brightness == Brightness.dark;*/
    return Scaffold(
      backgroundColor:Overseer.theme?Colors.black: AppColors.bgcolor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45.h,left: 30.w,right: 30.w),
              child: AppBarWidget(subtitle: 'Share your life with others', title: 'Hello Nouman',
                  btn:
                  InkWell(
                      onTap: (){
                        Overseer.theme=!Overseer.theme;
                        setState(() {
                      _themeManager.toggleTheme(Overseer.theme);});},
                      child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)),),
            SingleChildScrollView(
              child: SizedBox(
                height: 609.h,
                child: ListView(
                  children: [
                    SizedBox(height: 25.h,),
                    Row(
                      children: [
                        SizedBox(width: 20.w,),
                        Container(
                          height: 100.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            color: Overseer.theme?AppColors.dimcolor:Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(backgroundColor: Overseer.theme?AppColors.browncolor1:AppColors.browncolor,radius: 15.r,child: const Icon(Icons.add,color: Colors.white,),),
                              SizedBox(height: 10.h,),
                              Text("Add Story",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 10.sp),)
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        SizedBox(
                          height: 100.h,
                          width: 277.w,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context,index){
                                return  AddStoryWidget();
                              }),
                        )
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Divider(thickness: 1,color: Overseer.theme?Colors.white:Colors.grey),
                          SizedBox(height: 25.h,),
                          Container(
                            height: 150.h,
                            width: 368.w,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                              color:Overseer.theme?AppColors.dimcolor: Colors.white,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child:Padding(
                              padding: EdgeInsets.only(top:20.h,left: 20.w,right: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Whats Happening?",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                  SizedBox(height: 25.h,),
                                  const Divider(thickness: 1,),
                                  SizedBox(height: 15.h,),
                                  Row(
                                    children:  [
                                      Icon(Icons.image,color:Overseer.theme?AppColors.browncolor1: AppColors.secondarycolor,size: 20,),
                                      Spacer(),
                                      Container(
                                        height: 40.h,
                                        width: 88.w,
                                        decoration: BoxDecoration(
                                            gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                                            borderRadius: BorderRadius.circular(15.r)
                                        ),
                                        child: Center(
                                          child: Text("Post",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                        ),
                                      )

                                    ],
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h,),
                          Text("Post",style: TextStyle(color: Overseer.theme?Colors.white:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                          SizedBox(height: 25.h,),
                           CartWidget(
                            image: 'assets/image11.png',
                            text: 'Covid - 19 is Spreading all over the world\n so you make sure to follow SOP’s.', subtitle: '20 min ago',),


                        ],
                      ),
                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

/*SharedPreferences prefs = await SharedPreferences.getInstance();

bool CheckValue = prefs.containsKey('value');*/

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
