import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled/features/authentication/views/welcome/welcome_screen.dart';
import 'package:untitled/features/core/view/dashboard/dashboard.dart';

import 'exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

//  -- variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationid = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  // set fun initial screen load
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashboardScreen());
  }

  // fun phone verify
  Future<void> phoneAuthentication(String phoneNo) async {
   await _auth.verifyPhoneNumber(
     phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
      await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e){
       if(e.code == 'invalid-phone-number'){
         Get.snackbar('Error', 'The Provided phone number is not valid.');
       }else{
         Get.snackbar('Error', 'Something went Wrong Try again.');
       }
        },
        codeSent: (verificationId, resendToken){
       this.verificationid.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationid.value = verificationId;

        }
    );
  }


  // -- fun OTP
  Future<bool> verifyOTP(String otp) async {
  var credentials = await  _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationid.value, smsCode: otp));
  return credentials.user!= null? true : false;
  }
  Future<void> createUserWithEmailAndPassword(String email,
      String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => DashboardScreen())
          : Get.offAll(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailPasswordFailure.code(e.code);
      print('FIREBASE AUTH Exception ${ex.message}');
      throw ex;
    } catch (_) {

    }
    }

  Future<void> signInWithEmailAndPassword(String email, String password) async{
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailPasswordFailure.code(e.code);
      print('FIREBASE AUTH Exception ${ex.message}');
      throw ex;
    } catch (_) {}
  }
  Future<void> logout() async => await _auth.signOut();
  }
