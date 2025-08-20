import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_check_box.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';
import 'package:fruit_hub/core/helpers/show_message.dart';

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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCheckbox(
                      value: isChecked,
                      size: 22,
                      activeColor: Colors.green[900]!,
                      borderColor: Colors.green[900]!,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: CustomTextWidget(
                      text: 'من خلال انشاء حساب فإنك توافق على ',
                      clickableText: 'الشروط والاحكام الخاصة بنا',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                onPressed: () => _onRegister(context),
                backgroundColor: Colors.green[900],
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 16),
              CustomTextWidget(
                text: 'لديك حساب بالفعل؟ ',
                clickableText: 'تسجيل الدخول',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
