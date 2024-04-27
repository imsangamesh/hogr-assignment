import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/controllers/app_tab_controller.dart';
import 'package:hogr/tabs/tab_1.dart';
import 'package:hogr/tabs/tab_2.dart';
import 'package:hogr/tabs/tab_3.dart';
import 'package:hogr/widgets/custom_bottom_nav_item.dart';

class App extends StatelessWidget {
  App({super.key});

  final tabController = Get.put(AppTabController());

  @override
  Widget build(BuildContext context) {
    return GetX<AppTabController>(
      builder: (controller) {
        return WillPopScope(
          onWillPop: () async => !await controller
              .navigatorKeys[controller.selectedIndex.value].currentState!
              .maybePop(),
          child: Scaffold(
            body: Stack(
              children: [
                buildTabNavigator(0),
                buildTabNavigator(1),
                buildTabNavigator(2),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: controller.selectTab,
              selectedLabelStyle: const TextStyle(fontSize: 0),
              unselectedLabelStyle: const TextStyle(fontSize: 0),
              items: [
                BottomNavigationBarItem(
                  icon: CustomTabItem(
                    label: 'Tab 1',
                    isSelected: controller.selectedIndex.value == 0,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: CustomTabItem(
                    label: 'Tab 2',
                    isSelected: controller.selectedIndex.value == 1,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: CustomTabItem(
                    label: 'Tab 3',
                    isSelected: controller.selectedIndex.value == 2,
                  ),
                  label: '',
                ),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          ),
        );
      },
    );
  }

  /// Building separate `Navigator` Objects for separate `Tab`
  Widget buildTabNavigator(int index) {
    final tab = index == 0
        ? const Tab1()
        : index == 1
            ? const Tab2()
            : Tab3();

    return Offstage(
      offstage: tabController.selectedIndex.value != index,
      child: Navigator(
        key: tabController.navigatorKeys[index],
        onGenerateRoute: (_) => MaterialPageRoute(builder: (_) => tab),
      ),
    );
  }
}
