import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey_ = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: formKey_,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text("Full Name"),
                hintText: 'Full Name',
                prefixIcon: Icon(Icons.person_2_outlined),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.black
                    )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text("Enter Email"),
                prefixIcon: Icon(Icons.email_outlined),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.black
                    )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: controller.phoneNo,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text("Enter Phone Number"),
                prefixIcon: Icon(Icons.email_outlined),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.black
                    )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Enter Password"),
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0, color: Colors.black
                    )
                ),
              ),
            ),
            const SizedBox(height: 10,),
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
                      if(formKey_.currentState!.validate()){
                      SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                      }
                    },
                    child: Text('Login'.toUpperCase()))),
          ],
        ),
      ),
    );
  }
}