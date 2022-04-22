import 'package:flutter/material.dart';

class InputFieldsignup extends StatelessWidget {
  var child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Full Name",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Enter your email",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Enter Password",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Confirm Password",
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ],
      ),
    );
  }
}
