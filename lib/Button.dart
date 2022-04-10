import 'dart:ui';

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        color: Color.fromARGB(255, 104, 105, 107),
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              Icon(Icons.android), // <-- Use 'Image.asset(...)' here
              SizedBox(width: 16),
              Text('Sign in with Google'),
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   height: 50,
    //   margin: EdgeInsets.symmetric(horizontal: 50),
    //   decoration: BoxDecoration(
    //     color: Color.fromARGB(255, 23, 8, 228),
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Center(
    //     child: Text(
    //       "Continue ",
    //       style: TextStyle(
    //           color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
