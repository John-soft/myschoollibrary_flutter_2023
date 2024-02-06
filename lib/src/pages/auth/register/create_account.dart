import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myschoollibrary_flutter_2023/src/style/colors.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/password_field.dart';
import 'package:myschoollibrary_flutter_2023/src/widgets/text_field.dart';
import 'package:http/http.dart' as http;
import '../../../widgets/button_widget.dart';
import '../login/login_page.dart';

class CreateAnCcountPage extends StatefulWidget {
  const CreateAnCcountPage({super.key});

  @override
  State<CreateAnCcountPage> createState() => _CreateAnCcountPageState();
}

class _CreateAnCcountPageState extends State<CreateAnCcountPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _matNoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isLoading = false;

  Future<void> _register() async {
    setState(() {
      _isLoading = true;
    });
    const String apiUrl = 'http://10.0.2.2:4000/api/v1/users/register';
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: jsonEncode({
          'fullName': _nameController.text,
          'email': _emailController.text,
          'matNo': _matNoController.text,
          'password': _passwordController.text,
          'confirmPassword': _confirmPasswordController.text,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201 || response.statusCode == 201) {
        print(response.body);
      } else {
        // Registration failed
        print('Registration failed');
      }

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

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
                    title: 'Name',
                    controller: _nameController,
                    hintText: "Name",
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    title: 'Email',
                    controller: _emailController,
                    hintText: "Email",
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    title: 'MatNo',
                    controller: _matNoController,
                    hintText: "Matric Number",
                  ),
                  const SizedBox(height: 15),
                  PasswordTextField(
                    title: 'Password',
                    controller: _passwordController,
                    hintText: "Password",
                  ),
                  const SizedBox(height: 15),
                  PasswordTextField(
                    title: 'Confirm Password',
                    controller: _confirmPasswordController,
                    hintText: "Confirm Password",
                  ),
                  const SizedBox(height: 25),
                  ButtonWidget(
                      title: 'Continue',
                      buttonColor: AppColors.buttonColor,
                      textColor: AppColors.whiteColor,
                      onTap: () {
                        final name = _nameController.text.toString();
                        final email = _emailController.text.toString();
                        final matNo = _matNoController.text.toString();
                        final password = _passwordController.text.toString();
                        final confirmPassword =
                            _confirmPasswordController.text.toString();
                        if (name.isEmpty ||
                            email.isEmpty ||
                            matNo.isEmpty ||
                            password.isEmpty ||
                            confirmPassword.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Fields cannot be empty'),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Account created successfully'),
                            ),
                          );
                        }
                      })
                  // ElevatedButton(
                  //   onPressed: _isLoading ? null : _register,
                  //   child: _isLoading
                  //       ? const CircularProgressIndicator()
                  //       : const Text('Register'),
                  // ),
                ],
              ),
              const SizedBox(height: 15),
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
                      ' Login ',
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
