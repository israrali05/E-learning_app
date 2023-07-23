import 'package:flutter/material.dart';
import '../../../../common_widgets/form/header_form_widget.dart';
import '../../../../res/assets/image_assets.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderWidget(image: ImageAssets.welcomeScreenImage,
                title: "Welcome BAck",
                subtitle: "Make it work, make it right, make it fast",),
              SizedBox(height: 20,),
              LoginForm(),
              SizedBox(height: 20,),
              LoginFooterWidget()
            ],
          ),
        ),
      ),
    ));
  }
}






