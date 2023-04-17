import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
                  "favorite",
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "5 Items",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      "Sort By : ",
                      style: TextStyle(),
                    ),
                    Text(
                      "Price : ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Lowest to high ",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
