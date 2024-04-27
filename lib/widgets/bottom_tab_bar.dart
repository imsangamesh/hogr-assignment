// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hogr/controllers/app_tab_controller.dart';
// import 'package:hogr/widgets/custom_bottom_nav_item.dart';

// class BottomTabBar extends StatelessWidget {
//   BottomTabBar({super.key});

//   final tabController = Get.put(AppTabController());

//   @override
//   Widget build(BuildContext context) {
//     return GetX<AppTabController>(
//       builder: (controller) => BottomNavigationBar(
//         currentIndex: tabController.currentIndex.value,
//         onTap: tabController.currentIndex.call,
//         selectedLabelStyle: const TextStyle(fontSize: 0),
//         unselectedLabelStyle: const TextStyle(fontSize: 0),
//         items: [
//           BottomNavigationBarItem(
//             icon: CustomBottomNavItem(
//               label: 'Tab 1',
//               isSelected: tabController.currentIndex() == 0,
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: CustomBottomNavItem(
//               label: 'Tab 2',
//               isSelected: tabController.currentIndex() == 1,
//             ),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: CustomBottomNavItem(
//               label: 'Tab 3',
//               isSelected: tabController.currentIndex() == 2,
//             ),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }
// }
