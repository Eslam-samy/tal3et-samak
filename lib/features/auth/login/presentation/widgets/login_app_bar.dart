import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key, required this.onButtonClicked});
  final Function() onButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onButtonClicked,
          child: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              'assets/icons/back_icon.svg',
            ),
          ),
        ),
      ],
    );
  }
}
