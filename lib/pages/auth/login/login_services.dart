import 'dart:convert';
import 'package:dio/dio.dart' as http_dio;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../AppLayers/Networking/apis_services.dart';
import '../../../AppLayers/Networking/network_client.dart';
import '../../../AppLayers/Streaming/Overseer.dart';
import '../../../AppLayers/Streaming/appColors.dart';
import '../profile_screen.dart';
import 'login_model.dart';

class LoginFormService {
  http_dio.Dio dio = http_dio.Dio();
  late ApiService apiService =
  ApiService(networkClient: Get.put(NetworkClient()));
  List<LogInModel> logInData = [];

  Future<bool> loginSubmitForm(final email, final password) async {
    final prefs = await SharedPreferences.getInstance();
    final response;


    try {
      response = await apiService.loginUser(
          {'email': email.toString(), 'password': password.toString()});
      if (response.statusCode == 200) {

        Map<String, dynamic> map = jsonDecode(response.toString());
        print("===============${map}");
        if(map['success'] !=false){
          print("########################## ${response.statusCode} #####################################");
          logInData.clear();
          prefs.clear();

          logInData.add(LogInModel.fromJson(map));
          print("============clearing pref responce ===========================${prefs.getString("userToken")}");
          print("########################## ${logInData[0].data?.user?.id} #####################################");
          final SharedPreferences _sharedPreferences = await SharedPreferences.getInstance();
          _sharedPreferences.setString('userId',"${logInData[0].data?.user?.id.toString()}");
          _sharedPreferences.setString("User_Name", "${logInData[0].data?.user?.name}");
          _sharedPreferences.setString("Designation", "${logInData[0].data?.user?.designation}");
          _sharedPreferences.setString("image", "${logInData[0].data?.user?.imageUrl}");
          _sharedPreferences.setString("userToken", "${logInData[0].data?.token.toString()}");
          _sharedPreferences.setString("Type", "${logInData[0].data?.user.file}");
          Get.to(const ProfileScreen());

          Overseer.userName = "${logInData[0].data.user.name}";
          Overseer.csrf_token_overseer = "${logInData[0].data.token}";
          Overseer.userId = logInData[0].data.user.id.toString();
          Overseer.errorMessage = 'Success';
          Overseer.login_status = "verified-user";
          Overseer.is_user_valid = true;
          print("=======${logInData[0].data?.user?.name}================Login ${logInData[0].data?.token} ======================");

          print(
              "=======================Login 200 responce if ======================");
          return true;
        }
        else {
          Overseer.errorMessage = '${response.toString()}';
          print("============Login 200 responce else ==================${response?.statusCode}");
          Overseer.errorMessage = 'User Not Found';
          Overseer.login_status = "User Not Found";
          Overseer.is_user_valid = false;
          return false;
        }
      }
      else{return false;}
    }
    catch (error) {
      String content = error.toString();
      print("===========${content}exception else error =======${error.toString()}==========");
      Overseer.errorMessage = error.toString();
      Get.snackbar(
        "Network Error",
        "Check Internet Connection",
        dismissDirection: DismissDirection.horizontal,
        isDismissible: true,
        backgroundColor: MyAppColors.orangcolors,
        duration: Duration(seconds: 2),
      );
      print("Please Internet Connection");
      return false;
    }

   /* on http_dio.DioError catch (ex) {
      print(ex.error.toString());
      if (ex.type == http_dio.DioErrorType.response) {
        //404, 400, 500
        if (ex.response?.statusCode == 404) {
          //give warning here
          return false;
        }
      } else if (ex.type == http_dio. DioErrorType.other) {
        throw Exception(ex.error.message);
      } else {
        //timeout and canceled
        return false;
      }
      return false;
    }







    on http_dio.DioError catch (exception) {
      String content = exception.response.toString();
      if(exception.response?.statusCode == 404){
        Overseer.errorMessage = '${exception.response?.statusCode}';
        print("============content==================${exception.response?.statusCode}");
        Get.snackbar(
          "User Not Found",
          " please check",
          dismissDirection: DismissDirection.horizontal,
          isDismissible: true,
          backgroundColor: MyAppColors.yellowcolor,
          duration: Duration(seconds: 2),
          icon: Icon(Icons.error_outline, color: Colors.red),
        );
        Overseer.errorMessage = 'User Not Found';
        Overseer.login_status = "User Not Found";
        Overseer.is_user_valid = false;
      }else{
        print("===========exception else error =======${content}==========");

      }
      return false;
      // throw Exception(exception.message);
      // throw RemoteException(dioError: exception);
    }





    //  catch (error) {
    //
    // String content = error.toString();
    //    print("===========${content}exception else error =======${error.toString()}==========");
    //    Overseer.errorMessage = error.toString();
    //    Get.snackbar(
    //      "Error",
    //      "${Overseer.errorMessage}",
    //      dismissDirection: DismissDirection.horizontal,
    //      isDismissible: true,
    //      backgroundColor: MyAppColors.orangcolors,
    //      duration: Duration(seconds: 2),
    //    );
    //    print("NoSuchMethodError caught Error  ${NoSuchMethodError}");
    //    return false;
    //  }*/
  }
}