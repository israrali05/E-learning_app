import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../res/routes/routes_name.dart';
import '../forget_password/forget_password_options/build_show_bottom_modal_sheet.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2_outlined),
                hintText: 'Enter Email',
                labelText: 'Email',
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                hintText: 'Enter Password',
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Text(
                'Forget Password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Get.toNamed(RouteName.dashBoardScreen);
                  },
                  child: Text('Login'.toUpperCase()))),
        ],
      ),
    );
  }


}


