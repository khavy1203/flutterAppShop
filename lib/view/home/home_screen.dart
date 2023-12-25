import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter/component/main_header.dart';
import 'package:mobileflutter/controlller/controllers.dart';
import 'package:mobileflutter/view/home/component/carousel_slider/carousel_loading.dart';
import 'package:mobileflutter/view/home/component/carousel_slider/carousel_loading_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const MainHeader(),
        Obx(() {
          print('Banner List Length: ${homeController.bannerList.length}');
          if (homeController.bannerList.isNotEmpty) {
            return CarouselSliderView(
                bannerList: homeController.bannerList);
          } else {
            return CarouselLoading();
          }
        })
      ],
    ));
  }
}
