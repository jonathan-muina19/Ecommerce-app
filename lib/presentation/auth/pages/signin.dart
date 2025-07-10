import 'package:eommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:eommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:eommerce_app/common/widgets/button/button_continue.dart';
import 'package:eommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:eommerce_app/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinTitle(context),
            const SizedBox(height: 20),
            _emailTextfield(context),
            ButtonContinue(title: 'Continue', onPressed: () {
              AppNavigator.push(context, EnterPasswordPage());
              }
            ),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signinTitle(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}

Widget _emailTextfield(BuildContext context) {
  return const TextField(
      decoration: InputDecoration(
          hintText: 'Email Adress')
  );
}

Widget _createAccount(BuildContext context) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Dont have an Account ? ',
          style: TextStyle(fontSize: 15),
        ),
        TextSpan(
          text: 'Create One',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.push(context, const SignupPage());
                },
        ),
      ],
    ),
  );
}
