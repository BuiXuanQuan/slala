library textgo;

import 'package:flutter/material.dart';

typedef Validator = Function(String value);

class TextGo extends StatelessWidget {
  final dynamic obscureText;
  final String hintText;
  final TextStyle textStyle;
  final TextStyle style;
  final EdgeInsetsGeometry padding;
  final Widget prefixIcon;
  final Widget sufixIcon;
  final Validator validator;
  final TextEditingController controller;

  const TextGo(
      {Key key,
      this.obscureText,
      this.hintText,
      this.textStyle,
      this.style,
      this.padding,
      this.prefixIcon,
      this.sufixIcon,
      this.validator,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          // obscureText: obscureText,
          controller: controller,
          validator: validator,
          style: style,
          decoration: InputDecoration(
            contentPadding: padding,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: sufixIcon,
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
          ),
        ));
  }
}
