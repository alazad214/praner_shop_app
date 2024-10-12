import 'package:flutter/material.dart';

Future<ButtonStyle> appButtonStyle() async => ElevatedButton.styleFrom(
      elevation: 1,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      backgroundColor: Colors.teal,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      textStyle: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    );
