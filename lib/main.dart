import 'package:fashion_hub/screens/cart_screen.dart';
import 'package:fashion_hub/screens/category_screen.dart';
import 'package:fashion_hub/screens/category_screen_2.dart';
import 'package:fashion_hub/screens/check_out_screen.dart';
import 'package:fashion_hub/screens/lottie_demo.dart';
import 'package:fashion_hub/screens/enter_mobile_screen.dart';
import 'package:fashion_hub/screens/favourite_screen.dart';
import 'package:fashion_hub/screens/filter_screen.dart';
import 'package:fashion_hub/screens/home_screen.dart';
import 'package:fashion_hub/screens/nav_screen.dart';
import 'package:fashion_hub/screens/onboarding_1_screen.dart';
import 'package:fashion_hub/screens/profile_screen.dart';
import 'package:fashion_hub/screens/splash_screen.dart';
import 'package:fashion_hub/screens/verify_mobile_screen.dart';
import 'package:fashion_hub/screens/westernwear_screen.dart';
import 'package:flutter/material.dart';
import 'demo.dart';
import 'e_com_project/log_in_view_1.dart';
import 'explicit_animation.dart';
import 'implicit_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryScreen_2(),
    );
  }
}
