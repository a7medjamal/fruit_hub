import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGoogleLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomGoogleLoginButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(343, 50),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey[300]!),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Text(
              'تسجيل بواسطة جوجل',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              'assets/images/google_icon.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
