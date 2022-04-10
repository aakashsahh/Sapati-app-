import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  var child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: const BoxDecoration(

            border: Border(
              bottom: BorderSide(
                  width: 30.0, color: Color.fromARGB(255, 206, 206, 206)),
              //bottom: BorderSide(color: Colors.grey[200])
            ),
          ),
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(
                  width: 30.0, color: Color.fromARGB(255, 206, 206, 206)),
            ))
            //       child: const TextField(
            //         decoration: InputDecoration(
            //             hintText: "Enter your password",
            //             hintStyle: TextStyle(color: Colors.grey),
            //             border: InputBorder.none),
            // ),
            ),
      ],
    );
  }
}
