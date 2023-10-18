import 'package:flutter/material.dart';

class ButtonIconWidget extends StatelessWidget {
  const ButtonIconWidget(
      {super.key,
      required this.title,
      this.icon,
      required this.buttonColor,
      required this.textColor,
      required this.onTap});

  final String title;
  final String? icon;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: double.infinity,
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 20,
        // ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon!,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: 30),
            Text(
              title,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      required this.buttonColor,
      required this.textColor,
      required this.onTap});

  final String title;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: double.infinity,
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 20,
        // ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
