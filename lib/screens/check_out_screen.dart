import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  List imagee = [
    "assets/images/pay_1.png",
    "assets/images/pay_2.png",
    "assets/images/pay_3.png",
  ];
  List name1 = [
    "\$15",
    "\$20",
    "\$18",
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.14,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                gradient: LinearGradient(colors: [
                  Color(0xff2D6A4F),
                  Color(0xff95D5B2),
                ])),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white70,
                      size: 30,
                    )),
                Spacer(),
                Text(
                  "Check Out",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xff74C69D),
                    ),
                    Text(
                      "Shipping Address",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height * 0.14,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Oleh Chabanov",
                              style: TextStyle(fontSize: 18),
                            ),
                            Spacer(),
                            Text(
                              "Change  >",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "225, Highland Area,\nSpringfield, Il 62704, USA",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delivery_dining,
                      color: Color(0xff74C69D),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Delivery Method",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Container(
                              height: height * 0.11,
                              width: width * 0.23,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: selected == index
                                          ? Colors.amber
                                          : Colors.transparent,
                                      width: 1.7),
                                  borderRadius: BorderRadius.circular(13)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(imagee[index]),
                                    Text(
                                      name1[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("1-2 days"),
                                  ],
                                ),
                              ),
                            ),
                          )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.payments_sharp,
                      color: Color(0xff74C69D),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Payments Methods",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: height * 0.10,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            offset: Offset(2, 2)),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      children: [
                        Image.asset('assets/images/masterCard.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "**** **** **** **45",
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Text("Change  >"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: height * 0.22,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "items",
                        style: TextStyle(),
                      ),
                      Spacer(),
                      Text(
                        "\$199.89",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(),
                      ),
                      Spacer(),
                      Text(
                        "\$20",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        "\$239.98",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  CommonBtn(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: Stack(
                            children: [
                              Container(
                                height: height * 0.48,
                                width: width * 0.93,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 150),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Success",
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Your order will be delivered soon",
                                            ),
                                            Text(
                                              "It can be tracked in the Orders section.",
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            CommonBtn(
                                              onTap: () {},
                                              color: Color(0xff95D5B2),
                                              text: "Continue Shopping",
                                              textcolor: Colors.white,
                                              shape: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  borderSide: BorderSide.none),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "Go to Order",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xff2D6A4F)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: -180,
                                child: Container(
                                  height: 300,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff2D6A4F),
                                        Color(0xff95D5B2),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 160),
                                    child: Icon(
                                      Icons.check_circle_outlined,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    color: Color(0xff95D5B2),
                    text: "Pay",
                    textcolor: Colors.white,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
