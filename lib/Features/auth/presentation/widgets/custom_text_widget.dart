import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String clickableText;
  final VoidCallback? onTap;
  final Color clickableTextColor;
  final Color? textColor; 
  final double textFontSize;

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.clickableText,
    this.onTap,
    required this.clickableTextColor,
    required this.textFontSize, 
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: textColor ?? Color(0xff949D9E),
          fontSize: textFontSize,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cairo',
        ),
        children: [
          TextSpan(
            text: clickableText,
            style: TextStyle(
              fontSize: textFontSize,
              color: clickableTextColor,
              fontWeight: FontWeight.w700,
              fontFamily: 'Cairo',
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap ?? () {},
          ),
        ],
      ),
    );
  }
}
