import 'package:eommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:eommerce_app/common/widgets/button/button_continue.dart';
import 'package:eommerce_app/common/widgets/textfield/my_textfield.dart';
import 'package:eommerce_app/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../common/helper/navigator/app_navigator.dart';
import 'forgot_password.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signupTitle(context),
            const SizedBox(height: 20),
            MyTextfieldWidget(hintText: 'Firstname'),
            const SizedBox(height: 20,),
            MyTextfieldWidget(hintText: 'LastName'),
            const SizedBox(height: 20,),
            MyTextfieldWidget(hintText: 'Email Adress'),
            const SizedBox(height: 20,),
            MyTextfieldWidget(hintText: 'Password'),
            const SizedBox(height: 10,),
            ButtonContinue(title: 'Continue', onPressed: (){}),
            const SizedBox(height: 10,),
            _forgotPassword(context)
          ],
        ),
      ),
    );
  }
}

/// All Widgets
Widget _signupTitle(BuildContext context){
  return Text('Create Account', style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32
    ),
  );
}

Widget _forgotPassword(BuildContext context) {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'Do you have an account? ',
          style: TextStyle(fontSize: 15),
        ),
        TextSpan(
          text: 'Signin',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          recognizer:
          TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.push(context, const SigninPage());
            },
        ),
      ],
    ),
  );
}
