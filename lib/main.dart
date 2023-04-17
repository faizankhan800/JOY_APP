import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:journey_of_you/pages/Splash/splash_screen.dart';
import 'package:journey_of_you/AppLayers/Streaming/Provider.dart' as pro;
import 'AppLayers/Streaming/Overseer.dart';
Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.grey,
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home:   SplashScreen(),
          ),
        );
      },
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





