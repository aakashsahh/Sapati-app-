import 'package:flutter/material.dart';
import 'InputWrapperForgotpw.dart';
import 'HeaderForgotpw.dart';

class Forgotpw extends StatefulWidget {
  late final String title;

  @override
  State<Forgotpw> createState() => _Forgotpw();
}

class _Forgotpw extends State<Forgotpw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: <Color>[
              Color.fromARGB(255, 52, 0, 238),
              Color.fromARGB(255, 239, 85, 241)
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            HeaderForgotpw(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapperForgotpw(),
            ))
          ],
        ),
      ),
    );
  }
}
