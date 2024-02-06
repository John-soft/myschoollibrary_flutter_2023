import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/auth/admin_login.dart';
import 'package:myschoollibrary_flutter_2023/src/pages/auth/register/create_account.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/library_bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Welcome to',
                    textAlign: TextAlign.center,
                    style:
                        Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(
                              color: AppColors.whiteColor,
                              fontSize: 25,
                            ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'MY SCHOOL LIBRARY',
                    textAlign: TextAlign.center,
                    style:
                        Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                              color: AppColors.whiteColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                            ),
                  ),
                  const SizedBox(height: 80),
                  ButtonIconWidget(
                    title: 'Continue with Google',
                    buttonColor: AppColors.whiteColor,
                    textColor: AppColors.blackColor,
                    onTap: () {},
                    icon: 'assets/images/Google.png',
                  ),
                  const SizedBox(height: 30),
                  ButtonWidget(
                    title: 'Admin Login',
                    buttonColor: AppColors.whiteColor,
                    textColor: AppColors.blackColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminLoginPage(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 30),
                  ButtonWidget(
                    title: 'Create User Account',
                    buttonColor: AppColors.buttonColor,
                    textColor: AppColors.whiteColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateAnCcountPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
