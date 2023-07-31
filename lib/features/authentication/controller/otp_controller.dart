


import 'package:get/get.dart';
import 'package:untitled/features/core/view/dashboard/dashboard.dart';
import 'package:untitled/repository/authentication_repository/authentication_repository.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();
   Future<void> verifyOTP(String otp) async {
     var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
     isVerified ? Get.offAll(const DashboardScreen()) : Get.back();
   }
}