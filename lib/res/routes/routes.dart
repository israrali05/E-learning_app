
import 'package:get/get.dart';
import 'package:untitled/features/authentication/views/login/login_screen.dart';
import 'package:untitled/features/authentication/views/signup/signup_screen.dart';
import 'package:untitled/features/authentication/views/welcome/welcome_screen.dart';
import 'package:untitled/features/core/view/dashboard/dashboard.dart';
import 'package:untitled/res/routes/routes_name.dart';
import '../../features/authentication/views/forget_password/forget_password_mail/forget_password_mail.dart';
import '../../features/authentication/views/forget_password/forget_password_otp/forget_password_otp.dart';

class AppRoutes{
  static appRoutes ()=>[
    GetPage(name: RouteName.welcomeScreen, page:()=> const WelcomeScreen()),
    GetPage(name: RouteName.loginScreen, page:()=> const LoginScreen()),
    GetPage(name: RouteName.signUpScreen, page:()=> const SignUpScreen()),
    GetPage(name: RouteName.forgetPasswordMailScreen, page:()=> const ForgetPasswordMailScreen()),
    GetPage(name: RouteName.otpScreen, page:()=> const OtpScreen()),
    GetPage(name: RouteName.dashBoardScreen, page:()=> const DashboardScreen()),



  ];
}