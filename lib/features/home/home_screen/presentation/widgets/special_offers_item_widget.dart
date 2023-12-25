import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/product_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/image_radio_button_widget.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/my_network_image.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/offer_price_widget.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class SpecialOfferItemWidget extends StatelessWidget {
  const SpecialOfferItemWidget({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mainCornerRadius),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Stack(
              children: [
                Card(
                  elevation: 0,
                  color: secondaryBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(mainCornerRadius),
                  ),
                  child: MyNetworkImage(
                    width: 127,
                    imageUrl: product.image,
                  ),
                ),
                product.offer! == 1
                    ? Positioned(
                        top: 10,
                        right: 90,
                        child: Container(
                          decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius:
                                  BorderRadius.circular(mainCornerRadius)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 6),
                            child: Text(
                              '${product.offerPercent!}%',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ))
                    : const SizedBox(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name!,
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 12),
                  ),
                  product.offer! == 1
                      ? OfferPriceWidget(
                          price: product.offerPrice!,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 10,
                                    color: grayColor,
                                  ))
                      : const SizedBox(),
                  Text(
                    '${product.price!} ${'egp'.tr(context)}',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 12, color: orangeColor),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageRadioButtonWidget(
                        initialState: product.favorite == 'yes',
                        onButtonClicked: (value) {},
                        selectedStateImage: 'assets/icons/filled_blue_heart.svg',
                        unSelectedStateImage: 'assets/icons/ic_heart.svg'),
                    ImageRadioButtonWidget(
                        initialState: product.inCart == 'yes',
                        onButtonClicked: (value) {},
                        selectedStateImage: 'assets/icons/ic_cart_selected.svg',
                        unSelectedStateImage: 'assets/icons/ic_cart.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
