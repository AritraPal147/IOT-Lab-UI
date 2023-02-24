import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iot_lab_ui/constants.dart';
import 'package:iot_lab_ui/screens/main_screen.dart';
import 'package:iot_lab_ui/screens/sign_up_screen.dart';

import 'package:iot_lab_ui/components/lib/RoundedButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// TODO: remove back button
// TODO: add dummy email and password
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: Container(
                  height: 200.0,
                  child: Image.asset(
                      'assets/images/login_screen_image.png',
                    fit: BoxFit.contain,
                    width: 200.0,
                  ),
                ),
            ),

            const SizedBox(
              height: 54.0,
            ),

            const Text(
              'EMAIL',
              style: TextStyle(
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'name@email.com',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(
              height: 30.0,
            ),

            const Text(
              'PASSWORD',
              style: TextStyle(
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            TextField(
              decoration: kTextFieldDecoration.copyWith(
                hintText: '*********',
                prefixIcon: const Icon(Icons.lock_outlined)
              ),
              obscureText: true,
            ),

            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
                title: 'LOGIN',
                colour: Colors.blue,
                onPressed:
                    () => Navigator.pushNamed(context, MainScreen.id)),

            Center(
              child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                            color: Colors.black54),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(context, SignUpScreen.id),
                      )
                    ]
                  ),
              ),
            )
          ],
        ),
      )
    );
  }
}
