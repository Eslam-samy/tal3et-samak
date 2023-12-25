import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class OfferPriceWidget extends StatelessWidget {
  const OfferPriceWidget({super.key, required this.price, required this.style});
  final String price;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Original price
        Text(
          '$price ${'egp'.tr(context)}',
          style: style,
        ),

        // Horizontal line
        Positioned(
          top:
              0.7 * style.fontSize!, // Adjust the position based on your design
          left: 0,
          right: 0,
          child: Container(
            height: 1,
            color: grayColor,
          ),
        ),
      ],
    );
  }
}
