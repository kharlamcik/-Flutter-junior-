
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';

class CustomInk extends StatelessWidget {
  const CustomInk({
    super.key,
    required this.text,
    this.color = AppColors.greyContainer,
    this.style,
    this.colorBorder = Colors.transparent,
  });

  final String text;
  final Color color;
  final TextStyle? style;
  final Color colorBorder;

  @override
  Widget build(BuildContext context) {
    final TextStyle effectiveStyle = style ?? AppTypography.font16w400;
    return Ink(
      width: 200,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
        border: Border.all(
          color: colorBorder, width: 2
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {},
        splashColor: AppColors.purple,
        child: Center(
            child: Text(
          text,
          style: effectiveStyle,
        )),
      ),
    );
  }
}
