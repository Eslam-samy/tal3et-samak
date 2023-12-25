import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:talet_samak/core/constants/app_constants.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({super.key, this.imageUrl, this.width, this.height});

  final String? imageUrl;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      // height: 168,
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      imageUrl: '$BaseImagesUrl$imageUrl',
      fit: BoxFit.fill,
      fadeInDuration: const Duration(milliseconds: 500), // Adjust as needed
      fadeOutDuration: const Duration(milliseconds: 0),
      placeholder: (context, url) => Image.asset('assets/images/noti_icon.png'),
      errorWidget: (context, url, error) =>
          Image.asset('assets/images/noti_icon.png'),
    );
  }
}
