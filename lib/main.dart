import 'package:flutter/material.dart';
import 'package:iot_lab_ui/screens/login_screen.dart';
import 'package:iot_lab_ui/screens/main_screen.dart';
import 'package:iot_lab_ui/screens/sign_up_screen.dart';

void main() => runApp(const IotLabUI());

class IotLabUI extends StatelessWidget {
  const IotLabUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        MainScreen.id: (context) => const MainScreen(),
      },
    );
  }
}



