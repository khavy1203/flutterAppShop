import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter/component/main_header.dart';
import 'package:mobileflutter/controlller/controllers.dart';
import 'package:mobileflutter/view/home/component/carousel_slider/carousel_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        MainHeader(),
        Obx(() {
          if (homeController.isBannerLoading.value) {
            return const CarouselLoading();
          } else {
            return CarouselLoading();
          }
        })
      ],
    ));
  }
}
