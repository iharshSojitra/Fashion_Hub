import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  "Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_forever,
                      color: Colors.black54,
                      size: 30,
                    )),
              ],
            ),
          ),
          Container(
            height: height * 0.14,
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
                    onTap: () {},
                    color: Color(0xff95D5B2),
                    text: "Check out",
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
