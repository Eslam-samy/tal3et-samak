import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/slider_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/my_network_image.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, required this.slider});
  final SliderEntity slider;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: secondaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(mainCornerRadius),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          MyNetworkImage(
            imageUrl: slider.image,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  slider.title!,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  slider.name!,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
                (slider.productId != null && slider.productId != 0)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: orangeColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius as needed
                                ),
                                minimumSize: const Size(60, 30.0),
                              ),
                              onPressed: () {
                                //navigate to single product screen
                              },
                              child: Text(
                                "get_now".tr(context),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white),
                              ))
                        ],
                      )
                    : SizedBox()
              ],
            ),
          )
        ],
      ),
    );
  }
}
