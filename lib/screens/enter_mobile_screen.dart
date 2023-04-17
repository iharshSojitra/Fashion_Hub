import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:fashion_hub/screens/verify_mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class EnterMobile extends StatefulWidget {
  const EnterMobile({Key? key}) : super(key: key);

  @override
  State<EnterMobile> createState() => _EnterMobileState();
}

class _EnterMobileState extends State<EnterMobile> {
  final formkey = GlobalKey<FormState>();
  String country = "indian";
  String countryCode = "91";
  String countryFlag = "";
  final phoneNo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/image_5.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Please enter your phone number to\nverify your account",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Phone no. can't be Empty.";
                    } else if (value.length < 10) {
                      return "Enter must be 10 Digits";
                    }
                  },
                  controller: phoneNo,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                              context: context,
                              showPhoneCode:
                                  true, // optional. Shows phone code before the country name.
                              onSelect: (Country country) {
                                setState(() {
                                  countryCode = country.phoneCode;
                                  countryFlag = country.flagEmoji;
                                });
                              },
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(countryFlag.isEmpty ? "" : countryFlag),
                              SizedBox(
                                width: 10,
                              ),
                              Text("+${countryCode}"),
                            ],
                          ),
                        ),
                      ),
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      counterText: "",
                      hintText: "Enter your number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CommonBtn(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyMobile(),
                          ));
                    }
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
      ),
    );
  }
}
