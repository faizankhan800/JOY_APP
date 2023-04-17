import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart';
import '../../widgets/baar_widget.dart';
class DonateBloodScreen extends StatelessWidget {
  const DonateBloodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
        Container(
          child: Padding(
            padding:  EdgeInsets.only(top: 50.h,left: 30.w,right: 30.w),
            child: Column(
              children: const [
                BarWidget(title: 'Donate Blood', subtitle: 'Give the Gift of LIfe',),
              ],
            ),
          ),
        ),
          SizedBox(height:25.h),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20.h,left: 25.w,right: 25.w),
                  height: 219.h,
                  width: 368.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 15.w),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Brennon Fadel",
                            style: TextStyle(color: AppColors.blackcolor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),),
                          subtitle: Text("Rawalpindi",
                            style: TextStyle(color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),),
                          // trailing: Image.asset("assets/image9.png",height: 50.h,width: 50.w,),
                        ),
                        // SizedBox(height: 1.h,),
                        Divider(thickness: 0.5, color: Colors.grey[200],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Date",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("24-12-23",
                                    style: TextStyle(
                                        color: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

                              ],
                            ),
                            Column(
                              children: [
                                Text("Unit",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("2",
                                    style: TextStyle(
                                        color: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

                              ],
                            ),
                            Column(
                              children: [
                                Text("Status",
                                    style: TextStyle(color: Colors.grey[400],
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.h,),
                                Text("Pending",
                                    style: TextStyle(
                                        color: AppColors.blackcolor,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500))

                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 40.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: AppColors.greencolor,
                                  borderRadius: BorderRadius.circular(15.r)
                              ),
                              child: Center(
                                child: Text("Contact",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),),
                              ),
                            ),
                            SizedBox(width: 10.w,),
                            GestureDetector(
                              onTap: () {
                                // Get.to(const DoctorDetailScreen());
                              },
                              child: Container(
                                height: 40.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    gradient: AppColors.Gardient3(),
                                    borderRadius: BorderRadius.circular(15.r)
                                ),
                                child: Center(
                                  child: Text("Accept",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                );

              }),
          )


        ],
      ),
    );
  }
}
