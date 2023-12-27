import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talet_samak/features/auth/welcome/welcome_screen.dart';
import 'package:talet_samak/features/splash/widgets/splash_screen_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() async {
// Wait for 3 seconds and then navigate to the next screen
    Timer(
      const Duration(seconds: 3),
      () {
        _checkState();
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) => const WelcomeScreen()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SplashScreenWidget(),
      ),
    );
  }

  void _checkState() {}
}
