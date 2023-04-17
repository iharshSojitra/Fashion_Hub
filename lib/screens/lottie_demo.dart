import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Demo2 extends StatelessWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/lottie/129559-wrong-file.json",
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
