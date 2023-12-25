import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar(
      {super.key,
      required this.imageUrl,
      required this.onSearchClicked,
      required this.onProfileClicked});

  final String imageUrl;
  final Function() onSearchClicked;
  final Function() onProfileClicked;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: onProfileClicked,
          child: SvgPicture.network(
            imageUrl,
            placeholderBuilder: (context) =>
                Image.asset('assets/images/profile_pic_placeholder.png'),
          ),
        ),
        SvgPicture.asset(
          'assets/icons/logo.svg',
          height: 30,
        ),
        InkWell(
            onTap: onSearchClicked,
            child: SvgPicture.asset('assets/icons/search_icon.svg'))
      ],
    );
  }
}
