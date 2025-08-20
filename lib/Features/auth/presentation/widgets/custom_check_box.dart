import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final double size;
  final Color activeColor;
  final Color borderColor;
  final double borderRadius;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 24,
    this.activeColor = Colors.green,
    this.borderColor = Colors.grey,
    this.borderRadius = 6,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: () => onChanged(!value),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: 0.3),
          color: value ? activeColor : Colors.transparent,
        ),
        child: value
            ? Icon(Icons.check, color: Colors.white, size: size * 0.6)
            : null,
      ),
    );
  }
}
