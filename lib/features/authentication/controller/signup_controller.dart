import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/repository/user_repository/user_repository.dart';

import '../../../repository/authentication_repository/authentication_repository.dart';
import '../model/user/user_model.dart';
import '../views/forget_password/forget_password_otp/forget_password_otp.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=> Get.find();

  final userRepo = Get.put(UserRepository());

  // -- TextController get the data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  // call the function from design & it dol the rest
  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);

  }
  void createUser(UserModel user){
    userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(()=>OtpScreen());
  }

  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}