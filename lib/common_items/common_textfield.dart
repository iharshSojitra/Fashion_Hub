import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final filled;
  final hintText;
  final prefixIcon;
  final suffixIcon;
  final labelText;
  final keyboardType;
  final maxLength;
  final focusedBorder;
  final fillcolor;
  final void Function()? ontap;
  final TextEditingController? controller;
  final bool? obscure;
  final String? Function(String?)? validator;
  final dynamic onChanged;

  const CommonTextField({
    Key? key,
    this.filled,
    this.controller,
    this.obscure = false,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.keyboardType,
    this.maxLength,
    this.focusedBorder,
    this.ontap,
    this.onChanged,
    this.fillcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onTap: ontap,
        onChanged: onChanged,
        maxLength: maxLength,
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscure!,
        validator: validator,
        cursorColor: Colors.black54,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none),
          filled: filled,
          fillColor: fillcolor,
          counterText: "",
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          focusedBorder: focusedBorder,
        ));
  }
}
