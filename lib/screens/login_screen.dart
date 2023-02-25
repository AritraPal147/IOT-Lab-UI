import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
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

class _LoginScreenState extends State<LoginScreen> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Flexible(
                child: Container(
                  height: 200.0,
                  child: Image.asset(
                      'assets/images/logos/global_warming_logo.png',
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
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            TextField(
              onChanged: (value) => email = value,
              decoration: kTextFieldDecoration.copyWith(
                hintStyle: TextStyle(color: HexColor('#7B8794')),
                hintText: 'name@email.com',
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
            ),

            const SizedBox(
              height: 35.0,
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
              onChanged: (value) => password = value,
              decoration: kTextFieldDecoration.copyWith(
                hintText: '*********',
                hintStyle: TextStyle(color: HexColor('#7B8794')
                ),
                prefixIcon: const Icon(Icons.lock_outlined)
              ),
              obscureText: true,
            ),

            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
                title: 'LOGIN',
                colour: HexColor('#2F80ED'),
                onPressed:
                    () {
                      if (password == 'admin' && email == 'admin@email.com') {
                        Navigator.pushNamed(context, MainScreen.id);
                      }
                      else {
                        Fluttertoast.showToast(
                          msg: 'Invalid email or password',
                          toastLength: Toast.LENGTH_SHORT,
                        );
                      }
                    }),

            Center(
              child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                            color: HexColor('#7B8794')),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(color: HexColor('#2F80ED')),
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
