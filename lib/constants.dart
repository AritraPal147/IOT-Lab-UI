import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'name@email.com',
  hintStyle: TextStyle(color:  Colors.black54),
  contentPadding:
    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
      BorderSide(color: Colors.black26, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
      BorderSide(color: Colors.black26, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  )
);