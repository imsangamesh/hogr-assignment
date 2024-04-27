import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/main.dart';

class Page3 extends StatefulWidget {
  const Page3({this.isFromTab2 = false, super.key});

  final bool isFromTab2;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final hogrList = <String>[].obs;

  @override
  void initState() {
    super.initState();
    loadJSONData();
  }

  Future<void> loadJSONData() async {
    final data =
        await DefaultAssetBundle.of(context).loadString('assets/page3.json');
    final jsonData = jsonDecode(data) as Map<String, dynamic>;
    final foodList = List<String>.from(jsonData['page3'] as List);
    hogrList(foodList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        centerTitle: true,
        leading: widget.isFromTab2 ? const CloseButton() : null,
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: hogrList
                .map(
                  (element) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title: Text(element),
                      tileColor: kPrimaryColor.shade50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
