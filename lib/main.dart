import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/app.dart';

void main() {
  runApp(const MyApp());
}

const kPrimaryColor = Colors.purple;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HOGR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: App(),
    );
  }
}


/*

The app launches to a tab bar view with the pages below.
Page 1 has a tab bar with three tabs: Tab 1, Tab 2, and Tab 3.
Tab 1 has a button that opens Page 2.
Page 2 has a button that opens Page 3.
Page 3 is a scrollable list view. This can be populated by reading the attached JSON file.
Page 3 has a back button and it is a part of Tab 1.
Tab 2 has a button that opens Page 3 as well.
Here Page 3 should open on top of the tab bar with a close button instead of the back button.
Tab 3 has a button that takes the user to Tab 2.
If the current tab button is clicked again, it should clear any pages or popups on top of it.
All pages should be written with separate UI and controller classes.

*/
