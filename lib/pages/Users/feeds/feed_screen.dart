//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../theme/theme_manager.dart';
// import '../../../utils/colors.dart';
// import '../../../widgets/add_story_widget.dart';
// import '../../../widgets/appbar_widget.dart';
// import '../../../widgets/cart_widget.dart';
//
// class MyHomeScreen extends StatefulWidget {
//   const MyHomeScreen({Key? key}) : super(key: key);
//
//   @override
//   _MyHomeScreenState createState() => _MyHomeScreenState();
// }
// ThemeManager _themeManager = ThemeManager();
// class _MyHomeScreenState extends State<MyHomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _textTheme = Theme.of(context).textTheme;
//     bool Overseer.theme = Theme.of(context).brightness == Brightness.dark;
//     return Scaffold(
//
//       body: SingleChildScrollView(
//         physics: const NeverScrollableScrollPhysics(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 20.h,left: 30.w,right: 30.w),
//               child: AppBarWidget(subtitle: 'Share your life with others', title: 'Hello Nouman',
//                   btn: Switch(value: _themeManager.themeMode == ThemeMode.dark, onChanged: (newValue) {
//                     setState(() {
//                       _themeManager.toggleTheme(newValue);
//
//                     });
//                     print(Overseer.theme);
//                     //print(Overseer.theme);
//                   })
//
//               ),
//
//             ),
//             SingleChildScrollView(
//               child: SizedBox(
//                 height: 587.h,
//                 child: ListView(
//                   children: [
//                     SizedBox(height: 25.h,),
//                     Row(
//                       children: [
//                         SizedBox(width: 20.w,),
//                         Container(
//                           height: 100.h,
//                           width: 80.w,
//                           decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.2),
//                                 spreadRadius: 0,
//                                 blurRadius: 2,
//                                 offset: Offset(0, 0), // changes position of shadow
//                               ),
//                             ],
//                             color: Overseer.theme?Colors.white:Colors.black,
//                             borderRadius: BorderRadius.circular(10.r),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleAvatar(backgroundColor: AppColors.browncolor,radius: 15.r,child: const Icon(Icons.add,color: Colors.white,),),
//                               SizedBox(height: 10.h,),
//                               Text("Add Story",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 10.sp),)
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 10.w,),
//                         SizedBox(
//                           height: 100.h,
//                           width: 277.w,
//                           child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: 10,
//                               itemBuilder: (context,index){
//                                 return  AddStoryWidget();
//                               }),
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 25.h,),
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Divider(thickness: 1,),
//                           SizedBox(height: 25.h,),
//                           Container(
//                             height: 150.h,
//                             width: 368.w,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.2),
//                                   spreadRadius: 0,
//                                   blurRadius: 2,
//                                   offset: Offset(0, 0), // changes position of shadow
//                                 ),
//                               ],
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(20.r),
//                             ),
//                             child:Padding(
//                               padding: EdgeInsets.only(top:20.h,left: 20.w,right: 20.w),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Text("Whats Happening",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
//                                   SizedBox(height: 25.h,),
//                                   const Divider(thickness: 1,),
//                                   SizedBox(height: 15.h,),
//                                   Row(
//                                     children:  [
//                                       Icon(Icons.image,color: AppColors.secondarycolor,size: 20,),
//                                       Spacer(),
//                                       Container(
//                                         height: 40.h,
//                                         width: 88.w,
//                                         decoration: BoxDecoration(
//                                             gradient: AppColors.Gardient(),
//                                             borderRadius: BorderRadius.circular(15.r)
//                                         ),
//                                         child: Center(
//                                           child: Text("Post",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
//                                         ),
//                                       )
//
//                                     ],
//                                   )
//
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 25.h,),
//                           Text("Post",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
//                           SizedBox(height: 25.h,),
//                           CartWidget(
//                             image: 'assets/image11.png',
//                             text: 'Covid - 19 is Spreading all over the world\n so you make sure to follow SOP’s.', subtitle: '20 min ago',),
//
//
//                         ],
//                       ),
//                     )
//
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: Theme(
//         data: Theme.of(context).copyWith(splashColor: Colors.blue), // For Test
//         child: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ),
//       ),
//     );
//   }
// }
