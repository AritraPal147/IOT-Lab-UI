import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final kTextFieldDecoration = InputDecoration(
  hintStyle: const TextStyle(
      color:  Colors.black54,
  ),
  contentPadding:
    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
      BorderSide(color: HexColor('#7B8794'), width: 0.5),
    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide:
      BorderSide(color: Colors.blue, width: 0.5),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  )
);