import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=> Get.find();

  // -- TextController get the data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  // call the function from design & it dol the rest
  void registerUser(String email, String password){

  }
}