import 'package:flutter/material.dart';
import 'package:sapati/ButtonForgotpw.dart';

import 'ButtonForgotpw.dart';
import 'InputFieldForgotpw.dart';

class InputWrapperForgotpw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: InputFieldsignup(),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonForgotpw()
          ],
        ),
      ),
    );
  }
}
