import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/categories/categories.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/button_widget.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/text_field.dart';

import '../login/login_page.dart';

class CreateAnCcountPage extends StatefulWidget {
  const CreateAnCcountPage({super.key});

  @override
  State<CreateAnCcountPage> createState() => _CreateAnCcountPageState();
}

class _CreateAnCcountPageState extends State<CreateAnCcountPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Create An Account',
                  style:
                      Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                            color: AppColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  CustomTextField(
                      title: 'Full Name', controller: nameController),
                  const SizedBox(height: 15),
                  CustomTextField(title: 'Email', controller: emailController),
                  const SizedBox(height: 15),
                  CustomTextField(
                      title: 'Date of Birth', controller: dobController),
                  const SizedBox(height: 15),
                  CustomTextField(
                      title: 'Password', controller: passwordController),
                  const SizedBox(height: 15),
                  CustomTextField(
                      title: 'Confirm Password',
                      controller: confirmPasswordController),
                  const SizedBox(height: 20),
                  ButtonWidget(
                      title: 'Continue',
                      buttonColor: AppColors.buttonColor,
                      textColor: AppColors.whiteColor,
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoriesPage()),
                            (route) => false);
                      })
                ],
              ),
              const SizedBox(height: 10),
              Row(
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
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 12),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a member?',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      ' Sign in ',
                      style: TextStyle(color: AppColors.buttonColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
