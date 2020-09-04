import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infoGraficAutomation/pages/subpages/Info/info_Page.dart';
import 'package:infoGraficAutomation/pages/subpages/attendanceCabuto/attendance_Page.dart';
import 'package:infoGraficAutomation/pages/subpages/start/startPage.dart';
import 'package:infoGraficAutomation/pages/subpages/when/whenPage.dart';

class _Rx {
  final RxInt currentPage = 0.obs;
  final RxString currentPageTitle = AttendancePage.title.obs;
  final Rx<Color> backgroundColor = AttendancePage.color.obs;
}

class HomeController extends GetxController {
  final rx = _Rx();
  final PageController pageController = PageController();

  static HomeController get to => Get.find();

  @override
  void onInit() {
    //ever(r)
    super.onInit();
  }

  void updateBackgroundColor() {
    switch (rx.currentPage.value) {
      case 0:
        backgroundColor = WhenPage.color;
        rx.currentPageTitle.value = WhenPage.title;
        break;
      case 1:
        backgroundColor = StartPage.color;
        rx.currentPageTitle.value = StartPage.title;
        break;
      case 2:
        backgroundColor = InfoPage.color;
        rx.currentPageTitle.value = InfoPage.title;
        break;
    }
  }

  void updateCurrentPage(int page) {
    rx.currentPage.value = page;
    updateBackgroundColor();
  }

  @override
  Future<void> onClose() {
    pageController.dispose();
    return super.onClose();
  }

  int get currentPage => rx.currentPage.value;
  String get currentPageTitle => rx.currentPageTitle.value;
  Color get backgroundColor => rx.backgroundColor.value;
  set backgroundColor(Color c) => rx.backgroundColor.value = c;
}
