import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_divider_row.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_google_login_button.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/email_password_text_fields.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/forget_password_row.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/register_redirect_text_button.dart';
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
              EmailPasswordTextFields(
                emailController: emailController,
                passwordController: passwordController,
              ),
              const SizedBox(height: 16),
              ForgetPasswordRow(),
              const SizedBox(height: 37),
              CustomElevatedButton(
                onPressed: () => _onLogin(context),
                backgroundColor: Colors.green[900],
                text: 'تسجيل دخول',
              ),
              const SizedBox(height: 33),
              RegisterRedirectTextButton(),
              const SizedBox(height: 37),
              CustomDividerRow(),
              const SizedBox(height: 16),
              CustomGoogleLoginButton(
                onPressed: () {
                  showMessage(context, 'تم تسجيل الدخول باستخدام جوجل');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}