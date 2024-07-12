import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required TextEditingController controllerTitle,
  }) : controller = controllerTitle;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: (){},
      style: AppTypography.font20w400,
      controller: controller,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Введите название товара',
        hintStyle: AppTypography.font18w400,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid, color: AppColors.purple, width: 3, ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.none,),
        ),
      ),
    );
  }
}
