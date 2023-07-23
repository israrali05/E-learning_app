
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../res/routes/routes_name.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.all(30),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Make Selection!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
              const Text('Select one of the Option given Below to reset your password',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              const SizedBox(height: 20,),
              ForgetPasswordBtnWidget(
                onTap: (){
                  Get.toNamed(RouteName.forgetPasswordMailScreen);
                },
                title: "E-mail",
                subTitle: "Reset Via Mail verification",
                iconData: Icons.email_outlined,
              ),
              const SizedBox(height: 10,),
              ForgetPasswordBtnWidget(
                onTap: (){},
                title: "Phone No",
                subTitle: "Reset Via Phone verification",
                iconData: Icons.mobile_friendly_outlined,
              ),
            ],
          ),

        ));
  }
}