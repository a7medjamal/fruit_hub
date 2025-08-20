import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';
import 'package:fruit_hub/core/helpers/show_message.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onLogin(BuildContext context) {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      showMessage(context, 'يرجى ملء جميع الحقول');
      return;
    }
    showMessage(context, 'تم تسجيل الدخول بنجاح');
    //GoRouter.of(context).push(AppRouter.kHomeView);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 22),
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: '',
                    clickableText: 'نسيت كلمة المرور؟',
                    clickableTextColor: Colors.green[500]!,
                    textFontSize: 13,
                  ),
                ],
              ),
              const SizedBox(height: 37),
              CustomElevatedButton(
                onPressed: () => _onLogin(context),
                backgroundColor: Colors.green[900],
                text: 'تسجيل دخول',
              ),
              const SizedBox(height: 33),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: 'لا تمتلك حساب؟',
                    clickableText: ' قم بانشاء حساب',
                    clickableTextColor: Colors.green[900]!,
                    textFontSize: 16,
                  ),
                ],
              ),
              const SizedBox(height: 37),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
