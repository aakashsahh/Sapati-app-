import 'package:flutter/material.dart';
import 'package:sapati/Forgotpw.dart';

import 'home.dart';
import 'Forgotpw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Sapati',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      home: Forgotpw(),
    );
  }
}
