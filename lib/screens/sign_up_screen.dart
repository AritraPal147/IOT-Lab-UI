import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iot_lab_ui/screens/main_screen.dart';

import 'package:iot_lab_ui/components/lib/RoundedButton.dart';
import 'package:iot_lab_ui/components/lib/RoundedContinueButton.dart';
import '../constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String id = 'sign_up_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final List<String> countries = ['Sweden', 'Germany', 'Australia', 'USA', 'India', 'Japan'];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        child: Icon(
                          Icons.close,
                          size: 30.0,
                          color: HexColor('#7B8794'),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 60.0,
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        // fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: HexColor('#323F4B'),
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Enter your phone number to sign up',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: HexColor('#323F4B'),
                      ),
                    ),

                    const SizedBox(
                      height: 50.0,
                    ),
                    const Text(
                      'COUNTRY',
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            const SizedBox(
                              width: 4,
                            ),
                            Expanded(
                              child: Text(
                                'Sweden',
                                style: TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                  color: HexColor('#2F80ED'),
                                ),
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                        items: countries
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.bold,
                              color: HexColor('#2F80ED'),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )).toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                          },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                        iconSize: 30,
                        iconEnabledColor: HexColor('#2F80ED'),
                        iconDisabledColor: HexColor('#2F80ED'),
                        buttonHeight: 50,
                        buttonWidth: 160,
                        buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: HexColor('#2F80ED'),
                          ),
                          color: Colors.white,
                        ),
                        itemHeight: 40,
                        dropdownMaxHeight: 200,
                        dropdownWidth: 300,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        // dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 6,
                        scrollbarAlwaysShow: true,
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'LABEL',
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
                          hintText: 'Entry',
                        hintStyle: TextStyle(
                          color: HexColor('#7B8794'),
                        )
                      ),
                    ),

                    const SizedBox(
                      height: 25.0,
                    ),
                    Flexible(
                      child: RoundedButton(
                        title: 'CONTINUE',
                        colour: HexColor('#2F80ED'),
                        onPressed: () => Navigator.pushNamed(context, MainScreen.id),
                      ),
                    ),

                    const SizedBox (
                      height: 15.0,
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                                color: HexColor('#7B8794'),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'or',
                              style: TextStyle(
                                color: HexColor('#616E7C'),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                                  color: HexColor('#7B8794')
                              )
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),
                    Flexible(
                      child: RoundedContinueButton(
                        title: 'CONTINUE WITH FACEBOOK',
                        colour: Colors.white,
                        onPressed: () => Navigator.pushNamed(context, MainScreen.id),
                        icon: Image.asset(
                          'assets/images/icons/facebook_logo.png',
                          fit: BoxFit.contain,
                          width: 23.0,
                        ),
                      ),
                    ),

                    Flexible(
                      child: RoundedContinueButton(
                        title: 'CONTINUE WITH TWITTER',
                        colour: Colors.white,
                        onPressed: () => Navigator.pushNamed(context, MainScreen.id),
                        icon: Image.asset(
                          'assets/images/icons/twitter_logo.png',
                          fit: BoxFit.contain,
                          width: 23.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          )
        ),
    );
  }
}

