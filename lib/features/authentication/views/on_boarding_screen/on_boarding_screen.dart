import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.pages,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: onBoardingController.pageController,
            onPageChangeCallback: onBoardingController.onPageChangedCallback,
          ),
          Positioned(
            bottom: 50,
            child: OutlinedButton(
              onPressed: () => onBoardingController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
              top: 45,
              right: 35,
              child: TextButton(
                onPressed: ()=> onBoardingController.skip(),
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Obx(
              ()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: onBoardingController.currentPage.value,
                  count: 3,
                  effect: WormEffect(activeDotColor: Colors.black,
                      dotHeight: 5.0),
                )),
          )
        ],
      ),
    );
  }
}
