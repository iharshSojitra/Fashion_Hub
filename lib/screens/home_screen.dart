import 'package:fashion_hub/common_items/common_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List name1 = [
    "Women's\nFashion",
    "Men's\nFashion",
    "Phones",
    "Computer",
  ];
  List i1 = [
    "assets/images/i1.png",
    "assets/images/i2.png",
    "assets/images/i3.png",
    "assets/images/i4.png",
  ];
  List text1 = [
    "Home",
    "Shop by category",
    "Your Orders",
    "Your Wish List",
    "Share",
    "Privacy Policy",
    "Logout",
  ];
  List iconn = [
    Icon(Icons.home_outlined, color: Color(0xff74C69D)),
    Icon(Icons.grid_view, color: Color(0xff74C69D)),
    Icon(Icons.shopping_cart_outlined, color: Color(0xff74C69D)),
    Icon(Icons.favorite_outline, color: Color(0xff74C69D)),
    Icon(Icons.share, color: Color(0xff74C69D)),
    Icon(Icons.privacy_tip_outlined, color: Color(0xff74C69D)),
    Icon(Icons.logout, color: Color(0xff74C69D)),
  ];
  List items = [
    {
      "image": "assets/images/lady_1.png",
      "title": "Style Womens\nTurtleneck Oversized...",
      "money": "\$49",
      "money2": "\$99",
    },
    {
      "image": "assets/images/lady_2.png",
      "title": "Stylish Women Open\nFront Long Sleeve Ch...",
      "money": "\$69.99",
      "money2": "",
    },
    {
      "image": "assets/images/lady_1.png",
      "title": "Style Womens\nTurtleneck Oversized...",
      "money": "\$49",
      "money2": "\$99",
    },
    {
      "image": "assets/images/lady_2.png",
      "title": "Stylish Women Open\nFront Long Sleeve Ch...",
      "money": "\$69.99",
      "money2": "",
    },
  ];
  int dot_selected = 0;
  bool selected = true;

  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
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
                          onPressed: () {
                            globalKey.currentState!.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu_open,
                            color: Colors.white,
                            size: 30,
                          )),
                      Spacer(),
                      Text(
                        "Fashion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Hub",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.black,
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
            height: 33,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.19,
                      child: Stack(
                        children: [
                          PageView(
                            children: [
                              Container(
                                height: height * 0.19,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cloth_1.webp'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: height * 0.19,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cloth_2.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: height * 0.19,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cloth_3.webp'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: height * 0.19,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/cloth_4.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                            onPageChanged: (value) {
                              setState(() {
                                dot_selected = value;
                              });
                            },
                          ),
                          Positioned(
                            right: 0,
                            left: 0,
                            bottom: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  4,
                                  (index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 3),
                                        child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor:
                                                dot_selected == index
                                                    ? Color(0xff2D6A4F)
                                                    : Color(0xff95D5B2)),
                                      )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Catalogue",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "See All  >",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: height * 0.13,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: height * 0.13,
                              width: width * 0.24,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      Colors.black54,
                                      BlendMode.darken,
                                    ),
                                    image: AssetImage(i1[index]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  name1[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Featured",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
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
                              items[index]["title"],
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  items[index]["money"],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  items[index]["money2"],
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
      drawer: Drawer(
        backgroundColor: Color(0xfff0f0f0),
        child: Column(
          children: [
            Stack(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.zero,
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(140))),
                      accountName:
                          Text("Oleh Chabanov", style: TextStyle(fontSize: 20)),
                      accountEmail: Text("+91 123 456 7890",
                          style: TextStyle(fontSize: 14)),
                      currentAccountPicture: CircleAvatar(
                          foregroundColor: Colors.amber,
                          backgroundImage:
                              AssetImage('assets/images/profile.png')),
                    )),
                Positioned(
                  bottom: 25,
                  left: 230,
                  child: CircleAvatar(
                    radius: 21,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.edit_outlined, color: Colors.green),
                  ),
                ),
              ],
            ),
            Column(
              children: List.generate(
                  7,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Container(
                          height: height * 0.065,
                          width: width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                    offset: Offset(2, 2))
                              ],
                              borderRadius: BorderRadius.circular(13)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              iconn[index],
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                text1[index],
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff2D6A4F)),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ],
        ),
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
