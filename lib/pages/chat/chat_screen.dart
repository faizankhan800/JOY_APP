
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_sound/flutter_sound.dart';
import 'package:get/get.dart';


import '../../utils/colors.dart';


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
        backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/image9.png",height: 30.h,width: 30.w,),
            ),

            Text("Faizan Khan",style: TextStyle(color:Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w500),),
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
             child: Icon(Icons.arrow_back_ios)),
       ),

        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 20.w),
            child: GestureDetector(
                onTap: (){},
                child: const Icon(Icons.phone)),
          )
        ],
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
                                  width: 264.w,
                                  height: 90.h,
                                  child: Container(
                                    margin:  EdgeInsets.only(
                                      left: 25.w, top: 5.h,),
                                    padding:  EdgeInsets.only(
                                        top: 5.h,
                                        bottom: 5.h,
                                        left: 5.w,
                                        right: 5.w),
                                    width: 228,
                                    decoration:  BoxDecoration(
                                        color: Color(0xffFB6C2E),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.r),
                                          topLeft: Radius.circular(10.r),
                                          bottomLeft: Radius.circular(10.r)
                                          // bottomRight: Radius.circular(10),
                                        )),
                                    child: const Text(
                                      'It is a long established fact that a reader will be distracted by the readable content'
                                          ' of a pagen',

                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color:Colors.white),
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
                              height:50.h,
                              width: 94.w,
                              margin: EdgeInsets.only(
                                right: 25.w, top: 5.h,),
                              padding: EdgeInsets.only(
                                  top: 5.h,
                                  bottom: 5.h,
                                  left: 5.w,
                                  right: 5.w),

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.r),
                                    topLeft: Radius.circular(10.r),
                                    bottomLeft: Radius.circular(10.r),
                                  )),

                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Hello',
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(color: Colors.black),
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
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        side:  BorderSide(color:Colors.white,),
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
                          color: Colors.black,
                          fontSize: 14.sp),
                      decoration:  InputDecoration(
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
                          color:Colors.white,
                          border: Border.all(
                            width: 1.w,color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(10.r)),
                      child:Icon(
                        msgtext.text.length!=0?Icons.send:Icons.mic,
                        color:Color(0xffFB6C2E),
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