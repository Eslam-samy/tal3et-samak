import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset('assets/icons/splash_logo.svg'),
    );
  }
}
