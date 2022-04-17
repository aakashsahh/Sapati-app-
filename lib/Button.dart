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
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 23, 8, 228),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
          ),
        ),
      ],
    );
  }
}
