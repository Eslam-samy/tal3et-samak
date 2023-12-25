import 'package:flutter/cupertino.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/special_offers_item_widget.dart';

class SpecialOffersWidget extends StatelessWidget {
  const SpecialOffersWidget({super.key, required this.products});
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: ((context, index) =>
            SpecialOfferItemWidget(product: products[index])),
        separatorBuilder: (ctx, index) => const SizedBox(
              height: 16,
            ),
        itemCount: products.length);
  }
}
