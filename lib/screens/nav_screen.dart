import 'package:fashion_hub/screens/category_screen.dart';
import 'package:fashion_hub/screens/favourite_screen.dart';
import 'package:fashion_hub/screens/home_screen.dart';
import 'package:fashion_hub/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List items = [
    {
      "icon": Icon(Icons.home_outlined, color: Colors.black87),
      "tap_icon": Icon(Icons.home, color: Color(0xff74C69D)),
      "name": "Home",
    },
    {
      "icon": Icon(Icons.grid_view, color: Colors.black87),
      "tap_icon": Icon(Icons.grid_view_sharp, color: Color(0xff74C69D)),
      "name": "Categories",
    },
    {
      "icon": Icon(Icons.favorite_outline, color: Colors.black87),
      "tap_icon": Icon(Icons.favorite, color: Color(0xff74C69D)),
      "name": "Favourite",
    },
    {
      "icon": Icon(Icons.person_outline, color: Colors.black87),
      "tap_icon": Icon(Icons.person, color: Color(0xff74C69D)),
      "name": "Profile",
    },
  ];

  int selected = 0;

  List screens = [
    HomeScreen(),
    CategoryScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: screens[selected],
        bottomNavigationBar: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: height * 0.08,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 2,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                children: List.generate(
                    items.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selected == index
                                    ? items[index]['tap_icon']
                                    : items[index]['icon'],
                                Text(
                                  items[index]['name'],
                                )
                              ],
                            ),
                          ),
                        )),
              ),
            ),
            Positioned(
              right: 0,
              top: -15,
              child: Container(
                height: height * 0.07,
                width: width * 0.26,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff2D6A4F), Color(0xff95D5B2)]),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$199.99", style: TextStyle(color: Colors.white)),
                        Text("2 items",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
