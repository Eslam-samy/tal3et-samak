import 'package:flutter/material.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello,$name',
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(
            height: 10,
          ),
          Text("want_to_find_special_meal".tr(context),
              style: Theme.of(context).textTheme.bodySmall)
        ],
      ),
    );
  }
}
