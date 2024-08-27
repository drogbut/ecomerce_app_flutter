import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presenter/ui/sign_in.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// variables
  PageController pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current index when page change
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to the specific do selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(SignInPage());
    } else {
      var page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration: const Duration(microseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  /// update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
