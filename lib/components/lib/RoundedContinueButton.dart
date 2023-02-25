import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class RoundedContinueButton extends StatelessWidget {
  const RoundedContinueButton({
    super.key,
    required this.title,
    required this.colour,
    required this.onPressed,
    required this.icon,
  });

  final Color colour;
  final String title;
  final VoidCallback? onPressed;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 7.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Row(
            children: [
              Container(
                height: 30.0,
                child: icon,
              ),
              const SizedBox(
                width: 30.0,
              ),
              Text(
                title,
                style: TextStyle(
                  color: HexColor('#323F4B'),
                  fontSize: 15.0,
                  fontFamily: 'Mulish',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
