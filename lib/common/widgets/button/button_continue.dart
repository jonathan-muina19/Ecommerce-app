import 'package:eommerce_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonContinue extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const ButtonContinue({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
