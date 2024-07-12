import 'package:flutter/cupertino.dart';
import 'package:webpricol/product_screen/widget/star_rating.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';
import '../ui/product_detail_screen.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColors.greyContainer),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Builder(
              builder: (context) {
                return RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Описание товара \n',
                        style: AppTypography.font30w400,
                      ),
                      TextSpan(
                          text:
                          widget.product.description,
                          style: AppTypography.font16w400),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        StarRating(rating: widget.product.rating)
      ],
    );
  }
}