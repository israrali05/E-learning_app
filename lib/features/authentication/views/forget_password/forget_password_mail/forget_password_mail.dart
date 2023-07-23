import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_widgets/form/header_form_widget.dart';
import '../../../../../res/assets/image_assets.dart';
import '../../../../../res/routes/routes_name.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const FormHeaderWidget(
                image: ImageAssets.forgetPasswordImage,
                title: "Forget Password",
                imageHeight: 0.3,
                align: TextAlign.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                subtitle: "Enter Email to Reset your Password, make it fast",
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        hintText: 'E-Mail',
                        labelStyle: TextStyle(color: Colors.black38),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2.0, color: Colors.black38)),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.otpScreen);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Text('Next'),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
