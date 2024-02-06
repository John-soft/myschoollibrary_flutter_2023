import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.controller,
    this.hintText,
    this.inputType,
    this.titleColor,
    this.fontSize,
    this.maxLines,
  });

  final String title;
  final TextEditingController controller;
  final String? hintText;
  final TextInputType? inputType;
  final Color? titleColor;
  final double? fontSize;
  final int? maxLines;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).primaryTextTheme.bodySmall!.copyWith(
                color: widget.titleColor ?? AppColors.whiteColor,
                fontSize: widget.fontSize ?? 16,
              ),
        ),
        const SizedBox(height: 3),
        SizedBox(
          height: 50,
          child: Form(
            child: TextFormField(
              controller: widget.controller,
              cursorColor: AppColors.blackColor,
              keyboardType: widget.inputType,
              decoration: InputDecoration(
                  fillColor: AppColors.whiteColor,
                  hintText: widget.hintText,
                  filled: true,
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder()),
            ),
          ),
        ),
      ],
    );
  }
}
