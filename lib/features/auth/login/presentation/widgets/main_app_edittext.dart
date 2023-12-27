import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/core/constants/app_constants.dart';
import 'package:talet_samak/core/my_log.dart';

class CustomTextInput extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final String? errorText;
  final TextEditingController controller;
  final ValueChanged<String?>? onTextChanged; // Add this line
  const CustomTextInput({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    this.errorText,
    required this.controller,
    this.onTextChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    ConsoleLogger.info('build');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TextFormField
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword && _isObscure,
          onChanged: (text) {
            if (widget.onTextChanged != null) {
              widget.onTextChanged!(text);
            }},
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: grayColor),
            labelStyle: Theme.of(context).textTheme.bodySmall,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(mainCornerRadius),
              borderSide: const BorderSide(color: strokeColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(mainCornerRadius),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: grayColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  )
                : null,
          ),
        ),

        // Error Text
        if (widget.errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              widget.errorText!,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
