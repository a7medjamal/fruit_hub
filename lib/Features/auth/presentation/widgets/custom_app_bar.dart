import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(top: 12, right: 12),
        highlightColor: Colors.transparent,
        icon: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xfff1f1f5), width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
              size: 22,
            ),
          ),
        ),
        onPressed: () => GoRouter.of(context).pop(),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: 'Cairo',
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
