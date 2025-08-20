import 'package:flutter/material.dart';

class CustomDividerRow extends StatelessWidget {
  const CustomDividerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Color(0xffDDDFDF), thickness: 1, endIndent: 20),
        ),
        Text(
          "أو",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Divider(color: Color(0xffDDDFDF), thickness: 1, indent: 20),
        ),
      ],
    );
  }
}
