import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: CustomAppBar(text: 'نسيان كلمة المرور'),
      body: ForgetPasswordViewBody(),
      ),
    );
  }
}
