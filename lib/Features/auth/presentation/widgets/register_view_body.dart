import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 22),
              const CustomTextField(hintText: 'الاسم كامل'),
              const SizedBox(height: 16),
              const CustomTextField(hintText: 'البريد الإلكتروني'),
              const SizedBox(height: 16),
              const CustomTextField(hintText: 'كلمة المرور', isPassword: true),
              const SizedBox(height: 16),
              Row(
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoCheckbox(
                      activeColor: Colors.green[900],
                      value: isChecked,
                      side: BorderSide(color: Colors.green[900]!, width: 0.5),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 5),
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
                onPressed: () {},
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
