import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/appbar_widget.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../theme/theme_manager.dart';
import '../../../utils/colors.dart';
import '../../../widgets/friend_chat_widget.dart';
import 'all_friends_screen.dart';
import 'chat_screen.dart';
ThemeManager _themeManager = ThemeManager();
class FriendsScreen extends StatefulWidget {


   FriendsScreen({Key? key}) : super(key: key);

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor:Overseer.theme?Colors.black: AppColors.bgcolor,
      body: Padding(
        padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(subtitle: "Connect with your Friends", title: "Friends,",
                  btn: InkWell(
                    onTap: (){
                      Overseer.theme=!Overseer.theme;
                      print('rrr${Overseer.theme}rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');

                      setState(() {
                        _themeManager.toggleTheme(Overseer.theme);

                      });


                    },
                    child:Overseer.theme? Icon(Icons.light_mode_outlined,color: Colors.white,):Icon(Icons.light_mode_outlined,color: Colors.black,),)),


              SizedBox(height: 25.h,),
             Row(
               children: [
                 Text("Your Friends",
                   style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                 Spacer(),
                 GestureDetector(
                   onTap: (){
                     Get.to(AllFriendsScreen());

                   },
                   child: Text("See All",
                     style: TextStyle(color:Colors.grey,fontSize: 16.sp,fontWeight: FontWeight.w400),),
                 ),

               ],
             ),
              SizedBox(height: 15.h,),
              SizedBox(
                height: 80.h,
                child: ListView.builder(
                  itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                  return  CircleAvatar(backgroundImage:const AssetImage("assets/image10.png"),radius: 50.r,);
                }),
              ),
              SizedBox(height: 25.h,),
              Text(" Chats ",
                style: TextStyle(color: Overseer.theme?Colors.white:AppColors.blackcolor,fontSize: 18.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 15.h,),
              GestureDetector(
                onTap: (){Get.to(ChatScreen());},
                child: SizedBox(
                  height: 400.h,
                  child: ListView.builder(
                    itemCount: 10,
                      itemBuilder: (context,index){
                    return const FriendChatWidget();
                  }),
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: const FloatButton(),


    );
  }
}

