import 'package:fashion_hub/common_items/common_textfield.dart';
import 'package:fashion_hub/screens/filter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WesternwearScreen extends StatefulWidget {
  const WesternwearScreen({Key? key}) : super(key: key);

  @override
  State<WesternwearScreen> createState() => _WesternwearScreenState();
}

class _WesternwearScreenState extends State<WesternwearScreen> {
  List name1 = [
    "All",
    "Dresses",
    "Tops",
    "Sweater",
    "Jeans",
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
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.15,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      Color(0xff2D6A4F),
                      Color(0xff95D5B2),
                    ])),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          )),
                      Spacer(),
                      Text(
                        "Westernwear",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FilterScreen(),
                                ));
                          },
                          icon: Icon(
                            Icons.edit_note,
                            color: Colors.black87,
                            size: 30,
                          )),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                left: 25,
                child: Container(
                  height: height * 0.07,
                  width: width / 1.11,
                  child: Center(
                    child: CommonTextField(
                      filled: true,
                      fillcolor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      hintText: "What are you looking for?",
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                5,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: height * 0.043,
                        width: width * 0.18,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(2, 2))
                            ],
                            color: selected == index
                                ? Color(0xff95D5B2)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Text(
                          name1[index],
                          style: TextStyle(
                              color: selected == index
                                  ? Colors.white
                                  : Colors.black),
                        )),
                      ),
                    )),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "108 Items",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("Sort By : "),
                        Text(
                          "Featured",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 15,
                          crossAxisCount: 2,
                          mainAxisExtent: 290),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: height * 0.22,
                                  width: width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/lady_1.png'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Positioned(
                                  bottom: -12,
                                  right: 8,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 16,
                                    child: LikeBtn(),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: Colors.amberAccent,
                                        size: 18,
                                      )),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Style Womens\nTurtleneck Oversized...",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$49",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "\$99",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LikeBtn extends StatefulWidget {
  const LikeBtn({Key? key}) : super(key: key);

  @override
  State<LikeBtn> createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  bool like_selected = true;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: InkResponse(
          onTap: () {
            setState(() {
              like_selected = !like_selected;
            });
          },
          child: like_selected == false
              ? Icon(
                  Icons.favorite,
                  color: Colors.amberAccent,
                  size: 20,
                )
              : Icon(
                  Icons.favorite_outline,
                  color: Color(0xff2D6A4F),
                  size: 20,
                )),
    );
  }
}
