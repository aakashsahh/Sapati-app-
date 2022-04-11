import 'dart:ui';

import 'package:flutter/material.dart';

class Buttonsignup extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 23, 8, 228),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
