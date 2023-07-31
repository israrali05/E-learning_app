

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/authentication/model/user/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;
  
  createUser(UserModel user){
    _db.collection("Users").add(user.toJson()).whenComplete(
            () => Get.snackbar('SucessFul', 'Your Account is Created',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green.withOpacity(0.1),
              colorText: Colors.green),
    )
        .catchError((error, stackTrace){
          Get.snackbar("Error", "Something Went Wrong. Try Again",
          snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent.withOpacity(0.1),
              colorText: Colors.red
          );
    });
  }
}