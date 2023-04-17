import 'dart:math';

import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimation> createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  Animation<Offset>? animation;

  Animation<Color?>? colorAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animation = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
        .animate(animationController!);

    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(animationController!);

    //animationController!.forward();
    animationController!.repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => Transform.rotate(
            //     angle: animationController!.value * 2 * pi,
            //     child: FlutterLogo(
            //       size: 200,
            //     ),
            //   ),
            // ),
            // AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => Transform.scale(
            //     scale: animationController!.value,
            //     child: FlutterLogo(
            //       size: 200,
            //     ),
            //   ),
            // ),

            // AnimatedBuilder(
            //   animation: animationController!.view,
            //   builder: (context, child) => SlideTransition(
            //     position: animation!,
            //     child: FlutterLogo(
            //       size: 200,
            //     ),
            //   ),
            // )
            //
            AnimatedBuilder(
                animation: animationController!.view,
                builder: (context, child) => Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        color: colorAnimation!.value,
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
