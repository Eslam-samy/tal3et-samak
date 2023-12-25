import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/my_network_image.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class TrendMealsItemWidget extends StatelessWidget {
  const TrendMealsItemWidget({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mainCornerRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        width: 260,
        height: 170,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyNetworkImage(
              height: 114,
              imageUrl: product.image,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      product.name!,
                      style: Theme.of(context).textTheme.displayMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      maxLines: 1,
                      '${product.price!} ${'egp'.tr(context)}',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: orangeColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
