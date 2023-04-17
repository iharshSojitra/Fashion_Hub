import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double start = 0;

  double end = 5000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xffB7E4C7),
              child: ExpansionTile(
                  title: Row(
                    children: [Text("WOMEN"), Icon(Icons.keyboard_arrow_down)],
                  ),
                  subtitle: Text("Top, Tees & Kurtas"),
                  trailing: Image.asset('assets/images/c1.png'),
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: List.generate(
                            10,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Westernwear"),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                )),
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            SliderTheme(
              data: SliderThemeData(
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.yellow,
                  thumbColor: Colors.white,
                  trackHeight: 3),
              child: RangeSlider(
                values: RangeValues(start, end),
                max: 5000,
                min: 0,
                onChanged: (value) {
                  setState(() {
                    start = value.start;
                    end = value.end;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
