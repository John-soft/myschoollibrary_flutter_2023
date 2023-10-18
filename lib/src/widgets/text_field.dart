import 'package:flutter/material.dart';

import '../style/colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.title, required this.controller});

  final String title;
  final TextEditingController controller;

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
          style: Theme.of(context)
              .primaryTextTheme
              .bodySmall!
              .copyWith(color: AppColors.whiteColor),
        ),
        const SizedBox(height: 3),
        SizedBox(
          height: 40,
          child: Form(
            child: TextFormField(
              controller: widget.controller,
              cursorHeight: 16,
              cursorColor: AppColors.buttonColor,
              decoration: const InputDecoration(
                  fillColor: AppColors.whiteColor,
                  filled: true,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
          ),
        ),
      ],
    );
  }
}
