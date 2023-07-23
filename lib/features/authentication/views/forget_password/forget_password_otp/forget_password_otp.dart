import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'CO\nDE',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                      fontSize: 80),
                ),
                const Text('Verification',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0)),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Enter Verification Code send at suppert@verficationcode.com',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  mainAxisAlignment: MainAxisAlignment.center,
                  keyboardType: TextInputType.number,
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white),
                    child: const Text('Next'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
