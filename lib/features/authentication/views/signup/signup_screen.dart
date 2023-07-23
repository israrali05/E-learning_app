import 'package:flutter/material.dart';
import 'package:untitled/features/authentication/views/signup/signup_footer_widget.dart';
import 'package:untitled/features/authentication/views/signup/signup_form_widget.dart';
import 'package:untitled/res/assets/image_assets.dart';
import '../../../../common_widgets/form/header_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: ImageAssets.welcomeScreenImage,
                  title: "Get On Board!",
                  subtitle: "Create Your Profile to start your Journey.",
                ),
                SignUpFormWidget(),
                SignupFooterWidget()
              ],
            )),
      ),
    ));
  }
}
