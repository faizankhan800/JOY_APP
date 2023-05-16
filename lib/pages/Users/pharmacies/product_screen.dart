import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/utils/colors.dart';
import 'package:journey_of_you/widgets/dialougebox_widget.dart';

import '../../../AppLayers/Streaming/Overseer.dart';
import '../auth/controllers/my_controller.dart';

class ProductScreen extends StatelessWidget {
  final MyCartController c = Get.put(MyCartController());
  ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor:Overseer.theme?Colors.black: AppColors.bgcolor,
        body: Column(

          children: [
            Container(
              width: 428.w,
        height: 349.h,
        decoration: const BoxDecoration(
        image:  DecorationImage(
          image: AssetImage("assets/image19.png",),
          fit: BoxFit.fill),
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                        onTap: (){Get.back();},
                        child: Icon(Icons.arrow_back,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h,right: 30.w,left: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Panadol",
                      style: TextStyle(
                        color:Overseer.theme?Colors.white: AppColors.blackcolor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      Text("\$0.1",
                        style: TextStyle(
                            color: AppColors.blackcolor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.h,),
                  Text("50 in Stock",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                    ),),
                  SizedBox(height: 25.h,),
                  Text("About Doctor",
                    style: TextStyle(
                        color: Overseer.theme?Colors.white:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Text("Dummy text is also used to demonstrate the\n appearance of different typefaces and layouts",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Text("Specifications",
                    style: TextStyle(
                        color: Overseer.theme?Colors.white:AppColors.blackcolor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Category",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("Tablet",
                            style: TextStyle(
                                color:Overseer.theme?Colors.white: AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(" Pharmacy",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("CareFirst",
                            style: TextStyle(
                                color: Overseer.theme?Colors.white:AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Dosage",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),

                          Text("0.2g",
                            style: TextStyle(
                                color:Overseer.theme?Colors.white: AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(" Location",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400
                            ),),
                          SizedBox(height: 5.h,),
                          Text("Rawalpindi",
                            style: TextStyle(
                                color: Overseer.theme?Colors.white:AppColors.blackcolor,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 70.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 141.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Overseer.theme?AppColors.dimcolor:Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap:()=>c.decrement(),
                              child: Container(
                                height: 29.h,
                                width: 29.w,
                                decoration: BoxDecoration(
                                    gradient: Overseer.theme?AppColors.GardientD2():AppColors.Gardient2(),
                                    borderRadius: BorderRadius.circular(5.r)
                                ),
                                child: Icon(Icons.remove,size: 15,color: Colors.white,),
                              ),
                            ),
                            Obx(() =>
                            Text("${c.medicine.toString()}",
                              style: TextStyle(
                                  color: Overseer.theme?Colors.white:AppColors.blackcolor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500
                              ),),),
                            GestureDetector(
                              onTap: ()=>c.increment(),
                              child: Container(
                                height: 29.h,
                                width: 29.w,
                                decoration: BoxDecoration(
                                    gradient: Overseer.theme?AppColors.GardientD2():AppColors.Gardient2(),
                                    borderRadius: BorderRadius.circular(5.r)
                                ),
                                child: const Icon(Icons.add,size: 15,color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          AlertBox(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 205.w,
                          decoration: BoxDecoration(
                              gradient: Overseer.theme?AppColors.GardientD2():AppColors.Gardient2(),
                            borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(
                            child: Text("Buy",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp
                            ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
