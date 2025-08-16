import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(text: 'حساب جديد'),
        body: RegisterViewBody(),
      ),
    );
  }
}
