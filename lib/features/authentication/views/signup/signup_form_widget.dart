import 'package:flutter/material.dart';
class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
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
              keyboardType: TextInputType.emailAddress,
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
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Enter Phone Number"),
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
                    onPressed: () {},
                    child: Text('Login'.toUpperCase()))),
          ],
        ),
      ),
    );
  }
}