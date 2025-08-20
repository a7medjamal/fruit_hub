import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class RegisterRedirectTextButton extends StatelessWidget {
  const RegisterRedirectTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(
          text: 'لا تمتلك حساب؟',
          clickableText: ' قم بانشاء حساب',
          clickableTextColor: Colors.green[900]!,
          textFontSize: 16,
          onTap: () => GoRouter.of(context).push(AppRouter.kRegisterView),
        ),
      ],
    );
  }
}
