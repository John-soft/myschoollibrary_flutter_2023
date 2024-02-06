import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/admin/pages/admin_main_page.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/password_field.dart';
import '../../style/colors.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_field.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
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
            const SizedBox(
              height: 30,
            ),
            Text(
              'Login Admin',
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
                  controller: emailController,
                  hintText: "Email",
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                PasswordTextField(
                  title: 'Password',
                  controller: passwordController,
                  hintText: "Password",
                  inputType: TextInputType.number,
                ),
                const SizedBox(height: 25),
                ButtonWidget(
                    title: 'Login',
                    buttonColor: AppColors.buttonColor,
                    textColor: AppColors.whiteColor,
                    onTap: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text.trim();
                      if (email.isEmpty && password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Email and password are required'),
                          ),
                        );
                      }
                      if (email != 'admin@gmail.com' && password != '1234') {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Admin details is incorrect')));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Login Successful'),
                          ),
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminMainPage()));
                      }
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
