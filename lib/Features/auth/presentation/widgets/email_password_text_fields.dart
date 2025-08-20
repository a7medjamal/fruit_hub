import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';

class EmailPasswordTextFields extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const EmailPasswordTextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: emailController,
          hintText: 'البريد الإلكتروني',
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: passwordController,
          hintText: 'كلمة المرور',
          isPassword: true,
        ),
      ],
    );
  }
}