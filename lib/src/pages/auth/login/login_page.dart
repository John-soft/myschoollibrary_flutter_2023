import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/pages/auth/register/create_account.dart';
import 'package:myschoollibrary_flutter_2023/src/pages/home_page.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/password_field.dart';

import '../../../style/colors.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
            const SizedBox(
              height: 30,
            ),
            Text(
              'Welcome Back!',
              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                    color: AppColors.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                CustomTextField(
                  title: 'Email',
                  controller: _emailController,
                  hintText: "Email",
                ),
                const SizedBox(height: 15),
                PasswordTextField(
                  title: 'Password',
                  controller: _passwordController,
                  hintText: "Password",
                ),
                const SizedBox(height: 25),
                ButtonWidget(
                    title: 'Login',
                    buttonColor: AppColors.buttonColor,
                    textColor: AppColors.whiteColor,
                    onTap: () {
                      final email = _emailController.text.toString();
                      final password = _passwordController.text.toString();
                      if (email.isEmpty || password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email and Password is required'),
                          ),
                        );
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Successfully logged in'),
                          ),
                        );
                      }
                    })
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an acccount?',
                  style: TextStyle(color: AppColors.whiteColor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAnCcountPage()));
                  },
                  child: const Text(
                    ' Register',
                    style: TextStyle(color: AppColors.buttonColor),
                  ),
                ),
              ],
            )
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
