import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.hintText, this.isPassword});

  final String hintText;
  final bool? isPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPassword ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: Colors.black,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff9fafa),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
        hintText: widget.hintText,
        hintTextDirection: TextDirection.rtl,
        hintStyle: TextStyle(
          color: Color(0xff949D9E),
          fontSize: 13,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cairo',
        ),
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cairo',
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xfff1f1f5), width: 1),
        ),
        suffixIcon: widget.isPassword == true
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: IconButton(
                  icon: Icon(
                    !obscureText
                        ? CupertinoIcons.eye
                        : CupertinoIcons.eye_slash,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
              )
            : null,
      ),
    );
  }
}
