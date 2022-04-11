import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          margin: EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 23, 8, 228),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              "Signup",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
