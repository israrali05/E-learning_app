import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/res/routes/routes_name.dart';

import '../../../../res/assets/image_assets.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              icon: const Image(image: AssetImage(ImageAssets.googleLogo), width: 18,),
              onPressed: (){}, label: const Text("Login With Google")),
        ),
        const SizedBox(height: 20,),
        TextButton(onPressed: (){
          Get.toNamed(RouteName.signUpScreen);
        }, child: const Text.rich(
            TextSpan(
                text: "Don't have an Account?",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'SignUp',
                    style: TextStyle(color: Colors.blue),

                  )
                ]
            )
        ))
      ],
    );
  }
}