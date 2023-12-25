import 'package:flutter/material.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/trend_meals_item_widget.dart';

class TrendMealsWidget extends StatelessWidget {
  const TrendMealsWidget({super.key, required this.products});

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              TrendMealsItemWidget(product: products[index]),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 16,
              )),
          itemCount: products.length),
    );
  }
}
