import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                CustomTextField(title: 'Email', controller: emailController),
                const SizedBox(height: 15),
                CustomTextField(
                    title: 'Password', controller: passwordController),
                const SizedBox(height: 25),
                ButtonWidget(
                    title: 'Continue',
                    buttonColor: AppColors.buttonColor,
                    textColor: AppColors.whiteColor,
                    onTap: () {})
              ],
            ),
            const SizedBox(height: 40),
            lineDivider(),
            const SizedBox(height: 40),
            ButtonIconWidget(
              title: 'Sign in with Facebook',
              buttonColor: AppColors.whiteColor,
              textColor: AppColors.blackColor,
              onTap: () {},
              icon: 'assets/images/Facebook.png',
            ),
            const SizedBox(height: 15),
            ButtonIconWidget(
              title: 'Sign in with Google',
              buttonColor: AppColors.whiteColor,
              textColor: AppColors.blackColor,
              onTap: () {},
              icon: 'assets/images/Google.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget lineDivider() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 1,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: Text(
            'OR',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 1,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
