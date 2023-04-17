import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  double height = 50;
  double width = 300;

  double radius = 10;

  double padding = 20;

  double oldPositioned = -20;

  double opacity = 0.2;

  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedContainer(
            //   //curve: Curves.easeInBack,
            //   duration: Duration(seconds: 2),
            //   height: height,
            //   width: width,
            //   decoration: BoxDecoration(
            //       color: color, borderRadius: BorderRadius.circular(radius)),
            // ),

            // AnimatedPadding(
            //   padding: EdgeInsets.only(left: padding),
            //   duration: Duration(seconds: 2),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.green,
            //       )
            //     ],
            //   ),
            // ),

            // Stack(
            //   clipBehavior: Clip.none,
            //   children: [
            //     Container(
            //       height: 150,
            //       width: 150,
            //       color: Colors.yellow,
            //     ),
            //     AnimatedPositioned(
            //       curve: Curves.linear,
            //       duration: Duration(seconds: 2),
            //       right: oldPositioned,
            //       top: oldPositioned,
            //       child: Container(
            //         height: 150,
            //         width: 150,
            //         color: Colors.green,
            //       ),
            //     ),
            //   ],
            // ),

            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    width = width == 300 ? 50 : 300;

                    color = Colors.green;
                    radius = 100;
                    padding = 150;

                    oldPositioned = oldPositioned == -80 ? -20 : -80;

                    opacity = 0.9;
                  });
                },
                child: Text("Tap To Change"))
          ],
        ),
      ),
    );
  }
}
