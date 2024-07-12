import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';
import '../../widgets/button/custom_ink.dart';
import '../ui/product_detail_screen.dart';
import 'like_ink.dart';

class PriceInformation extends StatelessWidget {
  const PriceInformation({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: AppColors.greyContainer,
      ),
      child: Row(
        children: [
          Ink(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: AppColors.grey),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  widget.product.images.first,
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.product.productName, style: AppTypography.font30w400),
              Text(
                widget.product.category,
                style: AppTypography.font14w400,
              ),
            ],
          ),
          const Spacer(),
          FavoriteButton(
            text: 'Добавить в желаемое',
            style: AppTypography.font16w400,
          ),

          const SizedBox(
            width: 10,
          ),
          CustomInk(
            text: 'Купить ${widget.product.price} ₽',
            color: AppColors.black,
            style: AppTypography.font16w400white,
          ),
        ],
      ),
    );
  }
}
