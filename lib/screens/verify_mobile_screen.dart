import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:fashion_hub/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyMobile extends StatefulWidget {
  const VerifyMobile({Key? key}) : super(key: key);

  @override
  State<VerifyMobile> createState() => _VerifyMobileState();
}

class _VerifyMobileState extends State<VerifyMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('assets/images/image_5.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Please enter Code sent to",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "+91 123 456 7890",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Change phone Number",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      color: Color(0xff2D6A4F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 70,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonBtn(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                color: Color(0xff95D5B2),
                text: "Send Verification Code",
                textcolor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 18, color: Color(0xff2D6A4F)),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
