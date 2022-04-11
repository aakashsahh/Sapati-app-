import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 23, 8, 228),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Sign Up",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
