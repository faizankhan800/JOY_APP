import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../main.dart';
import '../../../utils/colors.dart';
import '../chat/friends_screen.dart';
import '../feeds/feed_screen.dart';
import '../medical_services/medical_services_screen.dart';
import '../user_profile/user_profile_screen.dart';
import 'notification_screen.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

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
      bottomNavigationBar: BottomNavigationBar(showSelectedLabels: false,showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: '',
              icon: Column(
                children: [
                  const Icon(Icons.home_filled),
                  SizedBox(height: 5.h,),
                  visi[0]?const Icon(Icons.circle,size: 10,):const SizedBox(),
                ],
              ), ),
          BottomNavigationBarItem(label: '',
            icon: Column(
              children: [
                const Icon(Icons.person_add_alt),
                SizedBox(height: 5.h,),
                visi[1]?const Icon(Icons.circle,size: 10,):const SizedBox(),
              ],
            ), ),
           BottomNavigationBarItem(label: '',
            icon: CircleAvatar(backgroundColor: AppColors.browncolor,radius: 30,
              child:Icon(Icons.add),
            ), ),
          BottomNavigationBarItem(label: '',
              icon: Column(
                children: [
                  const Icon(Icons.notifications_none_outlined),
                  SizedBox(height: 5.h,),
                  visi[3]?const Icon(Icons.circle,size: 10,):const SizedBox(),
                ],
              ), ),
          BottomNavigationBarItem(label: '',
              icon: Column(
                children: [
                  Icon(Icons.person),
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