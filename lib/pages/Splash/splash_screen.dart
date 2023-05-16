import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Users/options/login_option_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with TickerProviderStateMixin{
  @override void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
     Get.to(const LoginOptionScreen());

    });
  }
  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
        child: Scaffold(
          body: Container(
            height: 926.h,width: 428.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image26.png"),
                    fit: BoxFit.fill)),
            child: Padding(
              padding:  EdgeInsets.only(top: 320.h),
              child: Column(
                children: [
                  Image.asset("assets/image71.png",width: 357.w,height: 160.h,)
                ],
              ),
            ),
          )
        ),
      );
  }
}
