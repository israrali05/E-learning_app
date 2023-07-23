import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../../res/assets/image_assets.dart';
import '../../../../res/colors/app_colors.dart';
import '../../../../res/strings/strings.dart';
import '../model/on_boarding/model_on_boarding.dart';
import '../views/on_boarding_screen/on_boarding_widget.dart';

class OnBoardingController extends GetxController {
  final pageController = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingWidget(
        model: OnBoardingModel(
            title: AppStrings.onBoardingSubtitle1,
            subTitle: AppStrings.onBoardingSubtitle1,
            image: ImageAssets.onBoardingImage1,
            bgColor: AppColor.onBoardingPage1White,
            counterText: AppStrings.onBoardingCounter1)),
    OnBoardingWidget(
        model: OnBoardingModel(
            title: AppStrings.onBoardingSubtitle2,
            subTitle: AppStrings.onBoardingSubtitle2,
            image: ImageAssets.onBoardingImage2,
            bgColor: AppColor.onBoardingPage2Color,
            counterText: AppStrings.onBoardingCounter2)),
    OnBoardingWidget(
        model: OnBoardingModel(
            title: AppStrings.onBoardingSubtitle3,
            subTitle: AppStrings.onBoardingSubtitle3,
            image: ImageAssets.onBoardingImage3,
            bgColor: AppColor.onBoardingPage3Color,
            counterText: AppStrings.onBoardingCounter3))
  ];

  skip() => pageController.jumpToPage(page: 2);
  animateToNextSlide(){
    int nextPage = pageController.currentPage + 1;
    pageController.animateToPage(page: nextPage);
  }
  onPageChangedCallback(int activePageIndex)=> currentPage.value = activePageIndex;
}
