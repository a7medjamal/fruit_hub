import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/Features/splash/presentation/widgets/custom_elevated_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 22),
          Text(
            'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff616A6B),
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 31),
          CustomTextField(hintText: 'رقم الهاتف'),
          const SizedBox(height: 30),
          CustomElevatedButton(
            onPressed: () {},
            backgroundColor: Colors.green[900],
            text: 'نسيت كلمة المرور',
          ),
        ],
      ),
    );
  }
}
