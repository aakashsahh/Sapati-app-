import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
          color: Colors.blueAccent,
        )

            //   gradient: LinearGradient(
            //       // begin: Alignment.topCenter,
            //       //colors: [Colors.cyan[500], Colors.cyan[300], Colors.cyan[400]]),
            ),
        //   // child: Column(
        //   //   children: [
        //   //     SizedBox(
        //   //       height: 80,
        //   //     ),
        //   //     // Header(),
        //   //     Expanded(
        //   //         child: Container(
        //   //       decoration: BoxDecoration(
        //   //           color: Colors.white,
        //   //           borderRadius: BorderRadius.only(
        //   //             topLeft: Radius.circular(60),
        //   //             topRight: Radius.circular(60),
        //   //           )),
        //   //       //child: InputWrapper(),
        //   //     ))
        //   //   ],
        //   // ),
      ),
    );
  }
}
