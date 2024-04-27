import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTabController extends GetxController {
  final selectedIndex = 0.obs;

  void selectTab(int index) {
    if (selectedIndex.value == index) {
      navigatorKeys[selectedIndex.value]
          .currentState
          ?.popUntil((route) => route.isFirst);
    } else {
      selectedIndex(index);
    }
  }

  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];
}
