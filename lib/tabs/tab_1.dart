import 'package:flutter/material.dart';
import 'package:hogr/screens/page_2.dart';
import 'package:hogr/utils/nav_utils.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text('Page 2'),
          onPressed: () => NavUtils.to(context, const Page2()),
        ),
      ),
    );
  }
}
