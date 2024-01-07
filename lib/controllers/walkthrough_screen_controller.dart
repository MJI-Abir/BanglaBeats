

import 'package:get/get.dart';

class WalkthroughScreenController extends GetxController{
  static WalkthroughScreenController get instance => Get.find();
  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carouselCurrentIndex.value = index;
  }
}