import 'package:flutter/material.dart';
import 'package:hogr/screens/page_3.dart';
import 'package:hogr/utils/nav_utils.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text('Page 3'),
          onPressed: () => NavUtils.to(context, const Page3()),
        ),
      ),
    );
  }
}
