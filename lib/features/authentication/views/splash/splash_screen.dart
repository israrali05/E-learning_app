import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:untitled/res/assets/image_assets.dart';
import 'package:untitled/res/strings/strings.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../res/sizes/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimation(durationInMs: 1600,
          animate: AnimationModel(topAfter: 150, topBefore: 150,
          leftAfter: Sizes.defaultSize, leftBefore: -190),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.appName,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(AppStrings.appTagLine,
                  style: Theme.of(context).textTheme.displaySmall),
            ],
          ) ,),
      FadeInAnimation(
          durationInMs: 1600,
          animate: AnimationModel(
            bottomBefore: -60, bottomAfter: 0,
          ),
          child: const Image(
            image: AssetImage(ImageAssets.splashImage),
          ))

        ],
      ),
    );
  }
}