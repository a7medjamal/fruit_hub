import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_check_box.dart';
import 'package:fruit_hub/Features/auth/presentation/widgets/custom_text_widget.dart';

class TermsandConditionsRow extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  const TermsandConditionsRow({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomCheckbox(
            value: isChecked,
            size: 22,
            activeColor: Colors.green[900]!,
            borderColor: Colors.green[900]!,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: CustomTextWidget(
            text: 'من خلال انشاء حساب فإنك توافق على ',
            clickableText: 'الشروط والاحكام الخاصة بنا',
            clickableTextColor: Colors.green[500]!,
            textFontSize: 13,
          ),
        ),
      ],
    );
  }
}
