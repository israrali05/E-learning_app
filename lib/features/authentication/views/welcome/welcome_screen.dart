import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:untitled/res/assets/image_assets.dart';
import 'package:untitled/res/strings/strings.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../res/routes/routes_name.dart';
import '../../../../res/sizes/sizes.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
        FadeInAnimation(
        durationInMs: 1200,
        animate: AnimationModel(
          bottomBefore: -80,
          bottomAfter: 0,
          leftAfter: 0,
          leftBefore: 0,
          topBefore: 0,
          topAfter: 0,
          rightAfter: 0,
          rightBefore: 0,
        ),
            child: Container(
              padding: const EdgeInsets.all(Sizes.defaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage(ImageAssets.welcomeScreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        AppStrings.welcomeTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        AppStrings.welcomeSubTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child:
                              OutlinedButton(onPressed: () {
                                Get.toNamed(RouteName.loginScreen);

                              },
                                  style: OutlinedButton.styleFrom(
                                    shape:  const RoundedRectangleBorder(),
                                    foregroundColor: Colors.black,
                                    side: const BorderSide(color: Colors.black),
                                    padding: const EdgeInsets.symmetric(vertical: 15)
                                  ),
                                  child: Text("Login".toUpperCase(),))),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(RouteName.signUpScreen);

                              },
                              style: ElevatedButton.styleFrom(
                                  shape:  const RoundedRectangleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.black,
                                  side: const BorderSide(color: Colors.black),
                                  padding: const EdgeInsets.symmetric(vertical: 15)
                              ),
                              child: Text("Signup".toUpperCase()))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
