import 'package:flutter/material.dart';

class CommonBtn extends StatelessWidget {
  final text;
  final color;
  final icon;
  final icon2;
  final VoidCallback onTap;
  final shape;
  final textcolor;

  const CommonBtn({
    Key? key,
    this.text,
    this.color,
    required this.onTap,
    this.icon,
    this.icon2,
    this.shape,
    this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      height: height * 0.065,
      minWidth: width,
      color: color,
      shape: shape,
      child: Row(
        children: [
          Spacer(),
          Center(
            child: Text(
              "$text",
              style: TextStyle(color: textcolor, fontSize: 17),
            ),
          ),
          Spacer(),
          Icon(
            icon,
            size: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
