import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String clickableText;
  final VoidCallback? onTap;

  const CustomTextWidget({
    super.key,
    required this.text,
    required this.clickableText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Color(0xff949D9E),
          fontSize: 13,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cairo',
        ),
        children: [
          TextSpan(
            text: clickableText,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontFamily: 'Cairo',
              decoration: TextDecoration.underline, 
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  onTap ??
                  () {
                    debugPrint("Clickable text tapped");
                  },
          ),
        ],
      ),
    );
  }
}
