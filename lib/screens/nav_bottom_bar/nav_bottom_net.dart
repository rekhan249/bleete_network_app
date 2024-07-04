import 'package:bleete_network_app/constants/color_constants.dart';
import 'package:bleete_network_app/screens/home_screen.dart';
import 'package:bleete_network_app/screens/transaction_history.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBottomNetwork extends StatefulWidget {
  const NavBottomNetwork({super.key});

  @override
  State<NavBottomNetwork> createState() => _NavBottomNetworkState();
}

class _NavBottomNetworkState extends State<NavBottomNetwork> {
  @override
  Widget build(BuildContext context) {
    NavBottomController navBottomController = Get.put(NavBottomController());
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: navBottomController.currentIndex.value,
          children: const [
            HomePage(),
            TransactionHistory(),
            HomePage(),
            HomePage(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: commonColor,
          unselectedItemColor: Colors.black,
          elevation: 10,
          currentIndex: navBottomController.currentIndex.value,
          onTap: (int index) {
            navBottomController.selectedItemInNav(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_2),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize_outlined),
              label: 'more',
            ),
          ],
        );
      }),
    );
  }
}

class NavBottomController extends GetxController {
  var currentIndex = 0.obs;
  selectedItemInNav(int index) {
    currentIndex.value = index;
  }
}
