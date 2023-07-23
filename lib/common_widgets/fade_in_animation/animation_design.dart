import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'fade_in_animation_model.dart';

class FadeInAnimation extends StatelessWidget {
  FadeInAnimation({
    super.key,
    this.animate,
    required this.durationInMs,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final Widget child;
  final AnimationModel? animate;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        bottom: controller.animate.value
            ? animate!.bottomAfter
            : animate!.bottomBefore,
        left:
            controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        right: controller.animate.value
            ? animate!.rightAfter
            : animate!.rightBefore,
        child: child,
      ),
    );
  }
}