import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
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
    const FeedScreen(),
    const FriendsScreen(),
    const MedicalServicesScreen(),
    const NotificationScreen(),
    const UserProfileScreen(),
  ];

  List<bool> visi=[true,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(showSelectedLabels: false,showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '',
            icon: Column(
              children: [
                Image.asset("assets/image69.png",height: 20.h,width: 20.w,),
                SizedBox(height: 5.h,),
                visi[0]?const Icon(Icons.circle,size: 10,):const SizedBox(),
              ],
            ), ),
          BottomNavigationBarItem(label: '',
            icon: Column(
              children: [
                Image.asset("assets/image68.png",height: 20.h,width: 20.w,),
                SizedBox(height: 5.h,),
                visi[1]?const Icon(Icons.circle,size: 10,):const SizedBox(),
              ],
            ), ),
          const BottomNavigationBarItem(label: '',
            icon: CircleAvatar(backgroundColor: AppColors.browncolor,radius: 30,
              child:Icon(Icons.add),
            ), ),
          BottomNavigationBarItem(label: '',
            icon: Column(
              children: [
                Image.asset("assets/image51.png",height: 20.h,width: 20.w,),
                SizedBox(height: 5.h,),
                visi[3]?const Icon(Icons.circle,size: 10,):const SizedBox(),
              ],
            ), ),
          BottomNavigationBarItem(label: '',
            icon: Column(
              children: [
                Image.asset("assets/image52.png",height: 20.h,width: 20.w,),
                SizedBox(height: 5.h,),
                visi[4]?const Icon(Icons.circle,size: 10,):const SizedBox(),
              ],
            ), ),
        ],
        currentIndex: selectedIndex,

        fixedColor: Colors.deepOrange,unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
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