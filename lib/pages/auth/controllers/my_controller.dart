import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var isPasswordHidden=true.obs;
}
class MyCartController extends GetxController{
  var medicine=0.obs;
  increment(){
    medicine.value++;
  }
  decrement(){
    if(medicine.value<=0){
      Get.snackbar("Buying Medicines", "Can't be less then zero",
        isDismissible: true,
        backgroundColor: Colors.orangeAccent[300],
        duration: const Duration(seconds: 3),
      );
    }else{
      medicine.value--;
    }
  }

}