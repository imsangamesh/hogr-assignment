import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/screens/page_3.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text('Page 3'),
          onPressed: () => Get.to<Page3>(() => const Page3(isFromTab2: true)),
        ),
      ),
    );
  }
}
