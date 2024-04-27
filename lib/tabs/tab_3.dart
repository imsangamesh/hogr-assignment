import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controllers/app_tab_controller.dart';

class Tab3 extends StatelessWidget {
  Tab3({super.key});

  final tabController = Get.put(AppTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => tabController.selectTab(1),
          child: const Text('Tab 2'),
        ),
      ),
    );
  }
}
