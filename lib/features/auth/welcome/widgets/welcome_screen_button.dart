import 'package:flutter/material.dart';
import 'package:talet_samak/core/constants/app_constants.dart';

class WelcomeScreenButton extends StatelessWidget {
  const WelcomeScreenButton(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.textColor,
      required this.onButtonClicked});
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Function() onButtonClicked;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonClicked,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: main_app_padding),
        child: Container(
          height: mainButtonHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(mainCornerRadius),
          ),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
