import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/my_log.dart';
import 'package:talet_samak/features/home/home_screen/demain/entities/slider_entity.dart';
import 'package:talet_samak/features/home/home_screen/presentation/widgets/slider_item.dart';

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({super.key, required this.sliders});

  final List<SliderEntity> sliders;

  @override
  State<ImageSliderWidget> createState() => _ImageSliderWidgetState();
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Move the code that depends on inherited widgets here
    _precacheImages();
  }

  void _precacheImages() {
    try {
      // Preload images
      for (var slider in widget.sliders) {
        precacheImage(NetworkImage('$BaseImagesUrl${slider.image}'), context);
      }
    } catch (e, stackTrace) {
      ConsoleLogger.error('Error precaching images: $e\n$stackTrace');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: CarouselSlider(
                items: widget.sliders
                    .map((item) => SliderItem(slider: item))
                    .toList(),
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    padEnds: false,
                    // aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.sliders.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: _current == entry.key ? 22 : 12,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: _current == entry.key
                              ? BoxShape.rectangle
                              : BoxShape.circle,
                          borderRadius: _current == entry.key
                              ? const BorderRadius.all(Radius.circular(10))
                              : null,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark 
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ]),
    );
  }
}
