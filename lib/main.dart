import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/res/routes/routes.dart';
import 'features/authentication/views/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple.shade900),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: AppRoutes.appRoutes(),
      home: const SplashScreen(),
    );
  }
}