import 'package:fashion_hub/common_items/common_btn.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double start = 0;

  double end = 5000;
  List colorr = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purpleAccent,
    Colors.amberAccent,
    Colors.tealAccent,
  ];
  List sizee = [
    "XXS",
    "XS",
    "S",
    "M",
    "L",
    "XL",
  ];
  int selected = 0;
  int size_selected = 0;

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
                  "Filter",
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 18),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 3,
                    thumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    activeTrackColor: Colors.amber,
                  ),
                  child: RangeSlider(
                    values: RangeValues(start, end),
                    min: 0,
                    max: 5000,
                    onChanged: (value) {
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${start.toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 18),
                      ),
                      VerticalDivider(
                        color: Colors.grey.shade400,
                        thickness: 1.5,
                      ),
                      Text(
                        "${end.toStringAsFixed(0)}",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Dresses",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Brand",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Lark & Ro, Astylish, ECOWISH, Angashion",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Colors",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      7,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: selected == index
                                          ? Colors.amber
                                          : Colors.transparent,
                                      width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: colorr[index],
                                ),
                              ),
                            ),
                          )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sizes",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      6,
                      (index) => Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    size_selected = index;
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: size_selected == index
                                          ? Color(0xff95D5B2)
                                          : Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text(
                                    sizee[index],
                                    style: TextStyle(
                                        color: size_selected == index
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                                ),
                              ),
                            ],
                          )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sorted By",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.07,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Featured",
                          style: TextStyle(fontSize: 15),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CommonBtn(
                  onTap: () {},
                  color: Color(0xff95D5B2),
                  text: "Results (186)",
                  textcolor: Colors.white,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
