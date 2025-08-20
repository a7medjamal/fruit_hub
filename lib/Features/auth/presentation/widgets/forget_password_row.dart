import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordRow extends StatelessWidget {
  const ForgetPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextWidget(
          text: '',
          clickableText: 'نسيت كلمة المرور؟',
          clickableTextColor: Colors.green[500]!,
          textFontSize: 13,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kForgetPasswordView);
          },
        ),
      ],
    );
  }
}
