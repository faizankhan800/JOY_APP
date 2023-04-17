import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:journey_of_you/widgets/custom_button.dart';
import '../../utils/app_constant.dart';
import '../../utils/colors.dart';
import '../../widgets/drop_down_widget.dart';
import '../../widgets/login_text_widget.dart';
import '../home/bottom_navigation.dart';
import 'login/login_screen.dart';

class DiseaseScreen extends StatefulWidget {

   DiseaseScreen({Key? key}) : super(key: key);


  @override
  State<DiseaseScreen> createState() => _DiseaseScreenState();
}

class _DiseaseScreenState extends State<DiseaseScreen> {
   String _dropdownValue = 'Select Condition';
  DateTime currentDate = DateTime.now();
  String currentDate12 ='';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await
    showDatePicker(

        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate){
      setState((){
        currentDate = pickedDate;
        currentDate12=currentDate.toString().substring(0,11);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          height: 926.h,width: 428.w,
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/Signup.png"),
    fit: BoxFit.fill)),
    child: Padding(
    padding:  EdgeInsets.only(left: 25.w,top: 40.h,right: 30.w),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    IconButton(onPressed: (){Get.back();}, icon:const Icon(Icons.arrow_back)),
        SizedBox(height: 70.h,),
        Text("Select Condition",style: TextStyle(color: AppColors.blackcolor,
            fontSize: 24,fontFamily: AppConstant.Bold,fontWeight: FontWeight.w600),),
        SizedBox(height: 45.h,),
          DropdownButton<String>(isExpanded: true,
            hint: const Text("Condition"),
            value: _dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.grey,fontSize: 14.sp),
            onChanged: ( newValue) {
              setState(() {
                _dropdownValue = newValue!;
                print(newValue);
              });
            },
            items: <String>['Select Condition','Cancer', 'Sugar','Aids']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        SizedBox(height: 10.h,),


        SizedBox(height: 30.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(currentDate.toString().substring(0,11),style: TextStyle(color:Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
           // Text("Condition Since",style: TextStyle(color: Colors.grey,fontSize: 14.sp,fontWeight: FontWeight.w400),),
          InkWell(
              onTap: (){
                _selectDate(context);
              },
              child: Image.asset("assets/image2.png",height: 24.h,width: 24.w,))
          ],
        ),
        SizedBox(height: 10.h,),
        const Divider(color: Colors.grey,thickness: 1,),

        SizedBox(height: 100.h,),
        CustomButton(text: "Finish", onTap: (){Get.to( BottomNavigation(page: 0,));}),
        SizedBox(height: 20.h,),
      GestureDetector(
          onTap: (){
            Get.to( const LoginScreen());
          },
          child: const TextWidget(title: 'Already have an Account?', subtitle: 'Log in',))
    ]))),
      ));
  }
}
