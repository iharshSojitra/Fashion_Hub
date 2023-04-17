import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:fashion_hub/screens/enter_mobile_screen.dart';
import 'package:flutter/material.dart';

import '../responsible/media_query.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.70,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: height * 0.55,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/image_2.png'))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Online Order",
                        style: TextStyle(
                            fontSize: height * 0.02,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "You can see the product with all angles,",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "true and convenient",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: height * 0.55,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/image_3.png'))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Easy Payment",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "You just need to take a photo or upload and",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "we will find similar products for you.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: height * 0.55,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/image_4.png'))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Fast Delivery",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "You just need to take a photo or upload and",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "we will find similar products for you.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: selected == index
                                ? Color(0xff2D6A4F)
                                : Color(0xff95D5B2),
                          ),
                        ))),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonBtn(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnterMobile(),
                      ));
                },
                color: Color(0xff95D5B2),
                text: "Get Started!",
                textcolor: Colors.white,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
