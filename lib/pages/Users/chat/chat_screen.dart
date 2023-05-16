
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_sound/flutter_sound.dart';
import 'package:get/get.dart';

import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../utils/colors.dart';


class ChatScreen extends StatefulWidget {
  ChatScreen({ Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var msgtext = TextEditingController();
  var listviewcon = TextEditingController();
  List<bool> me = [
    false,
    true,
    false,
    true,
    true,
  ];


  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Overseer.theme?Colors.black:AppColors.bgcolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85.h),
        child: AppBar(
          backgroundColor: Overseer.theme?AppColors.dimcolor:Colors.white,
          iconTheme: IconThemeData(),
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/image9.png",height: 30.h,width: 30.w,),
              ),

              Text("Faizan Khan",style: TextStyle(color:Overseer.theme?Colors.white:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),),
              // Container(width: 100.w,)
            ],
          ),
          centerTitle: true,
          elevation: 1,
          shadowColor: Colors.white,
         leading:Padding(
           padding:  EdgeInsets.only(left: 30.w),
           child: GestureDetector(
               onTap: (){
                 Get.back();
               },
               child: Icon(Icons.arrow_back_ios,color: Overseer.theme?Colors.white:Colors.black,)),
         ),

          actions: [
            Padding(
              padding:  EdgeInsets.only(right: 20.w),
              child: GestureDetector(
                  onTap: (){},
                  child:  Icon(Icons.phone,color: Overseer.theme?Colors.white:Colors.black,)),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: me.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 20.h,right: 30.w,left: 30.w),
                    child: Column(
                      children: [
                        me[index]
                            ? Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                SizedBox(
                                  width: 301.w,
                                  height: 108.h,
                                  child: Container(
                                    margin:  EdgeInsets.only(
                                      left: 25.w, top: 5.h,),
                                    padding:  EdgeInsets.only(
                                        top: 5.h,
                                        bottom: 5.h,
                                        left: 5.w,
                                        right: 5.w),
                                    decoration:  BoxDecoration(
                                        color:Overseer.theme?AppColors.dimcolor: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(22.r),
                                          topLeft: Radius.circular(22.r),
                                          bottomLeft: Radius.circular(22.r),
                                           bottomRight: Radius.circular(22.r),
                                        )),
                                    child:  Text(
                                      'It is a long established fact that a reader will be distracted by the readable content',

                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:Overseer.theme?Colors.white:Colors.black),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Text("9:15 am",
                              style: TextStyle(color: Colors.grey,fontSize: 10.sp,fontWeight: FontWeight.w400),)
                          ],
                        )
                            : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height:45.h,
                              width: 86.w,
                              margin: EdgeInsets.only(
                                right: 25.w, top: 5.h,),
                              padding: EdgeInsets.only(
                                  top: 5.h,
                                  bottom: 5.h,
                                  left: 5.w,
                                  right: 5.w),

                              decoration: BoxDecoration(
                                  color: Overseer.theme?AppColors.browncolor1:AppColors.browncolor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(23.r),
                                    topLeft: Radius.circular(23.r),
                                    bottomLeft: Radius.circular(23.r),
                                  )),

                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Hello',
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.75,
                  child: Card(
                     semanticContainer: true,
                     clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Overseer.theme?AppColors.dimcolor:Colors.white,
                    shape: RoundedRectangleBorder(
                        side:   BorderSide(color:Overseer.theme?AppColors.dimcolor:Colors.white,),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: TextFormField(
                      // autocorrect: true,
                      // enableSuggestions: true,
                      maxLines: 5,
                      minLines: 1,
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.multiline,
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: msgtext,
                      style:  TextStyle(
                          color:Overseer.theme? Colors.white:Colors.black,
                          fontSize: 14.sp),
                      decoration:  InputDecoration(
                        suffixIcon:Icon(Icons.mic_none_outlined),
                        hintText: 'Type your massage',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10.w, bottom: 16.h),
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,

                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ),

                // SizedBox(width: 1),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          color: Overseer.theme?AppColors.browncolor1:Color(0xffFB6C2E),
                          border: Border.all(
                            width: 1.w,color: Overseer.theme?AppColors.browncolor1:Colors.white
                          ),
                          borderRadius: BorderRadius.circular(10.r)),
                      child:const Icon(
                        Icons.send,
                        color:Colors.white,
                      )
                  ),)
              ],
            ),
          ),

        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}