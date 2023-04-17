import 'package:fashion_hub/common_items/common_textfield.dart';
import 'package:fashion_hub/screens/westernwear_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List title = [
    "WOMEN",
    "MEN",
    "KIDS",
    "HOME &\nKITCHEN",
    "BEAUTY",
    "GADGETS",
  ];
  List subtitle = [
    "Top & Tees, Kurtas & Suits... ",
    "T-Shirts, Shirts, Jeans, Shoes...",
    "Clothing, Footwear, Brands...",
    "Sofa, Bedsheets, Cushion...",
    "Makeup, Fragrances, Groom...",
    "Head phones, Mobile covers...",
  ];
  List imagess = [
    "assets/images/c1.png",
    "assets/images/c2.png",
    "assets/images/c3.png",
    "assets/images/c4.png",
    "assets/images/c5.png",
    "assets/images/c6.png",
  ];
  List in_title = [
    "Westernwear",
    "Ethnic & Fusionwear",
    "Footwear",
    "Lingerie",
    "Bags, Wallets & Cluthes",
    "Jewellery",
    "Other Accessories",
    "Beauty & Personal Care",
    "Sports & Activewear",
    "Luggage & Trolleys",
    "Sleepwear & Longewear",
    "Watches",
    "Winterwear Store",
    "Gift Card",
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Column(
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
                          "Categories",
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
              height: 15,
            ),
            SizedBox(
              height: height * 0.78,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Container(
                          color: Color(0xffB7E4C7),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                Text(
                                  title[index],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                )
                              ],
                            ),
                            subtitle: Text(
                              subtitle[index],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            trailing: Image.asset(
                              imagess[index],
                              height: 150,
                              width: 120,
                              fit: BoxFit.fill,
                            ),
                            children: [
                              Container(
                                color: Colors.white,
                                child: Column(
                                  children: List.generate(
                                      in_title.length,
                                      (index) => Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: InkWell(
                                              onTap: () {
                                                if (index == 0) {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            WesternwearScreen(),
                                                      ));
                                                }
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    in_title[index],
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
