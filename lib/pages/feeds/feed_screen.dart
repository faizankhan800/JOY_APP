import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart';
import '../../widgets/add_story_widget.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/cart_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h,left: 30.w,right: 30.w),
              child:const AppBarWidget(subtitle: 'Share your life with others', title: 'Hello Nouman',)
            ),
           SingleChildScrollView(
             child: SizedBox(
               height: 540.h,
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
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10.r),
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             CircleAvatar(child: Icon(Icons.add,color: Colors.white,),
                               backgroundColor: AppColors.browncolor,radius: 15.r,),
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
                               return const AddStoryWidget();
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
                         const Divider(thickness: 1,),
                         SizedBox(height: 25.h,),
                         Container(
                           height: 136.h,
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
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(20.r),
                           ),
                           child:Padding(
                             padding: EdgeInsets.only(top:20.h,left: 20.w,right: 20.w),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text("Whats Happening",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                                 SizedBox(height: 25.h,),
                                 const Divider(thickness: 1,),
                                 SizedBox(height: 15.h,),
                                 Row(
                                   children:  [
                                     Icon(Icons.image,color: AppColors.secondarycolor,size: 20,),
                                     Spacer(),
                                     Container(
                                       height: 30.h,
                                       width: 80.w,
                                       decoration: BoxDecoration(
                                           color: AppColors.browncolor,
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
                         Text("Post",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w600),),
                         SizedBox(height: 25.h,),
                         const CartWidget(
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
