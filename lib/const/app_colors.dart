import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static final Color backgroudColor = Color(0xFF7825BF);
  static final Color scaffoldColor = Color(0XFF090D22);
  static final Color whiteColor = Colors.white;
  static final Color greyColor = Colors.grey;
    static final pripmaryColor = Color(0xFF252c4a);
  static final secondaryColor = Color(0xFF117eeb);
}

class Dimensions {
  static double screenHeight = Get.context!.height;

  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;

  static double height45 = screenHeight / 18.76;

  static double width20 = screenHeight / 42.2;

  //radius
  static double radius20 = screenHeight / 42.2;

//popular food
  static double popularFoodImgSize = screenHeight / 2.41;
}

