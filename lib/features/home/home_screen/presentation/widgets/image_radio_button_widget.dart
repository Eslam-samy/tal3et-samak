import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageRadioButtonWidget extends StatefulWidget {
  const ImageRadioButtonWidget(
      {super.key,
      required this.initialState,
      required this.onButtonClicked,
      required this.selectedStateImage,
      required this.unSelectedStateImage});

  final bool initialState;
  final Function(bool value) onButtonClicked;
  final String selectedStateImage;
  final String unSelectedStateImage;

  @override
  State<ImageRadioButtonWidget> createState() => _ImageRadioButtonWidgetState();
}

class _ImageRadioButtonWidgetState extends State<ImageRadioButtonWidget> {
  bool state = false;

  @override
  void initState() {
    super.initState();
    state = widget.initialState;
  }

  void _changeButtonState() {
    setState(() {
      state = !state;
      widget.onButtonClicked(state);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _changeButtonState,
      child: SvgPicture.asset(
        state ? widget.selectedStateImage : widget.unSelectedStateImage,
        width: 18,
      ),
    );
  }
}
