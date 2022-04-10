import 'package:flutter/material.dart';
import 'InputWrapper.dart';
import 'Header.dart';

class MyHomePage extends StatefulWidget {
  late final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Header(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}
