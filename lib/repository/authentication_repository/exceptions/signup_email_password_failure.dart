
import 'package:flutter/material.dart';

class SignUpEmailPasswordFailure{
  final String message;
  SignUpEmailPasswordFailure([this.message = "An Unknown Error occurred."]);

  factory SignUpEmailPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
    return SignUpEmailPasswordFailure('Please Enter a Stronger Password');
      case 'invalid-email':
      return SignUpEmailPasswordFailure('Email is not Valid or badly formatted');
      case 'email-already-in-use':
        return SignUpEmailPasswordFailure('Enter Email is Already Exist');
      case 'operation-not-allowed':
        return SignUpEmailPasswordFailure('Operation is not allowed, Please Contact Support for help!');
      case 'user-disabled':
        return SignUpEmailPasswordFailure('This User is disable. Please Contact Support!');
      default:
        return SignUpEmailPasswordFailure();
    }
  }
}