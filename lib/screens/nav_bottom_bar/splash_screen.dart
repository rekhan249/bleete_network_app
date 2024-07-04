import 'dart:async';

import 'package:bleete_network_app/screens/nav_bottom_bar/nav_bottom_net.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 6),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NavBottomNetwork(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/beetlnet.gif"),
      ),
    );
  }
}
