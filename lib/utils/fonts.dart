import 'package:flutter/material.dart';

import 'colors.dart';

abstract class AppTypography {
  static const _font = TextStyle(
    fontFamily: 'Sofia Pro',
    color: Colors.black
  );

  static final font50w400 = _font.copyWith(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w400,
  );

  static final font20w400 = _font.copyWith(

    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final font14w400 = _font.copyWith(

    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final font14w400grey = _font.copyWith(

    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static final font20w400grey = _font.copyWith(
    color: AppColors.greyContainer,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final font16w400 = _font.copyWith(

    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final font16w400white = _font.copyWith(

    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white
  );

  static final font18w400 = _font.copyWith(

    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static final font18w400gray = _font.copyWith(
    color: AppColors.greyContainer,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static final font30w400 = _font.copyWith(

    fontSize: 30,
    fontWeight: FontWeight.w400,
  );

  static final font30w400gray = _font.copyWith(
    color: AppColors.greyContainer,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
}
