import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List text1 = [
    "Shipping Addresses",
    "Payments Methods",
    "Orders",
    "Favorite",
    "Settings",
    "Log Out",
  ];
  List iconn = [
    Icon(Icons.location_on_outlined, color: Color(0xff74C69D)),
    Icon(Icons.payments_sharp, color: Color(0xff74C69D)),
    Icon(Icons.event_note_outlined, color: Color(0xff74C69D)),
    Icon(Icons.favorite_outline, color: Color(0xff74C69D)),
    Icon(Icons.settings, color: Color(0xff74C69D)),
    Icon(Icons.logout, color: Color(0xff74C69D)),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.19,
                width: width,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(140)),
                  gradient: LinearGradient(colors: [
                    Color(0xff2D6A4F),
                    Color(0xff95D5B2),
                  ]),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Oleh Chabanov",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "+91 123 456 7890",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 30,
                bottom: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 17,
                  child: Icon(
                    Icons.mode_edit_outlined,
                    color: Color(0xff74C69D),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(
                6,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Container(
                        height: height * 0.075,
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
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
