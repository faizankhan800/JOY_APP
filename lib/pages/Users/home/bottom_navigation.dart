import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../main.dart';
import '../../../utils/colors.dart';
import '../chat/friends_screen.dart';
import '../feeds/feed_screen.dart';
import '../medical_services/medical_services_screen.dart';
import '../user_profile/user_profile_screen.dart';
import 'notification_screen.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, required int page}) : super(key: key);

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  final widgetOptions = [
    MyHomeScreen(),
     FriendsScreen(),
     MedicalServicesScreen(),
     NotificationScreen(),
     UserProfileScreen(),
  ];

  List<bool> visi=[true,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar:  ClipRRect(
        borderRadius:  BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
        child: SizedBox(
          // height: 80.h,
          child: BottomNavigationBar(
            backgroundColor: Overseer.theme?AppColors.dimcolor :AppColors.bgcolor,
            showSelectedLabels: false,showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(label: '',
                icon: Column(
                  children: [
                    Image.asset("assets/image69.png",height: 18.h,width: 18.w,color: Overseer.theme?Colors.white:Colors.black),
                    SizedBox(height: 5.h,),
                    visi[0]?const Icon(Icons.circle,size: 5,):const SizedBox(),
                  ],
                ), ),
              BottomNavigationBarItem(label: '',
                icon: Column(
                  children: [
                    Image.asset("assets/image68.png",height: 18.h,width: 18.w,color: Overseer.theme?Colors.white:Colors.black,),
                    SizedBox(height: 5.h,),
                    visi[1]?const Icon(Icons.circle,size: 5,):const SizedBox(),
                  ],
                ), ),
              BottomNavigationBarItem(label: '',
                icon:Container(
                  decoration:  BoxDecoration(
                    gradient: Overseer.theme?AppColors.GardientD1():AppColors.Gardient(),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(backgroundColor: Colors.transparent,radius: 16,
                      child:SizedBox.fromSize(
                        size: const Size.fromRadius(10),
                        child: const FittedBox(
                          child: Icon(Icons.add),
                        ),
                      )
                  ),
                ), ),
              BottomNavigationBarItem(label: '',
                icon: Column(
                  children: [
                    Image.asset("assets/image51.png",height: 18.h,width: 18.w,color: Overseer.theme?Colors.white:Colors.black),
                    SizedBox(height: 5.h,),
                    visi[3]?const Icon(Icons.circle,size: 5,):const SizedBox(),
                  ],
                ), ),
              BottomNavigationBarItem(label: '',
                icon: Column(
                  children: [
                    Image.asset("assets/image52.png",height: 18.h,width: 18.w,color: Overseer.theme?Colors.white:Colors.black),
                    SizedBox(height: 5.h,),
                    visi[4]?const Icon(Icons.circle,size: 5,):const SizedBox(),
                  ],
                ), ),
            ],
            currentIndex: selectedIndex,

            fixedColor:  Overseer.theme?AppColors.browncolor1:Colors.deepOrange,unselectedItemColor: Colors.grey,
            onTap: onItemTapped,
          ),
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      if(visi[index]==true){

        for(int i=0;i<5;i++){
          visi[i]=false;
        }
        visi[index]=false;
      }
      else{
        for(int i=0;i<5;i++){
          visi[i]=false;
        }
        visi[index]=true;


      }


    });
  }
}