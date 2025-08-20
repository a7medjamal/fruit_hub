import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/Terms_and_conditions_row.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/email_password_text_fields.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/login_redirect_text_button.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';
import 'package:fruit_hub/core/helpers/show_message.dart';
import 'package:fruit_hub/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  bool isChecked = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onRegister(BuildContext context) {
    if (nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      showMessage(context, 'يرجى ملء جميع الحقول');
      return;
    }
    if (!isChecked) {
      showMessage(context, 'يرجى قبول الشروط والأحكام');
      return;
    }
    showMessage(context, 'تم إنشاء الحساب بنجاح');
    GoRouter.of(context).push(AppRouter.kLoginView);
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
              CustomTextField(
                controller: nameController,
                hintText: 'الاسم كامل',
              ),
              const SizedBox(height: 16),
              EmailPasswordTextFields(
                emailController: emailController,
                passwordController: passwordController,
              ),
              const SizedBox(height: 16),
              TermsandConditionsRow(
                isChecked: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                onPressed: () => _onRegister(context),
                backgroundColor: Colors.green[900],
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 16),
              LoginRedirectTextButton(),
            ],
          ),
        ),
      ],
    );
  }
}
