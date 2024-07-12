
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.style, this.color = AppColors.purple, required this.onTap});


  final String text;
  final TextStyle? style;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final TextStyle effectiveStyle = style ?? AppTypography.font20w400;

    return InkWell(
      splashColor: color,
      borderRadius: BorderRadius.circular(9),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          text,
          style: effectiveStyle,
        ),
      ),
    );
  }
}
