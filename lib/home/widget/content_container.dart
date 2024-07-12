
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/fonts.dart';

class ContentContainer extends StatelessWidget {
  final String productName;
  final String category;
  final double rating;
  final int price;
  final String imageUrl;
  final VoidCallback onTap;

  const ContentContainer({
    super.key,
    required this.productName,
    required this.category,
    required this.rating,
    required this.price,
    required this.imageUrl, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          color: AppColors.greyContainer,
          borderRadius: BorderRadius.circular(9)),
      child: InkWell(
        borderRadius: BorderRadius.circular(9),
        splashColor: AppColors.purple,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppColors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: [
                          Text(rating.toString()),
                          const Icon(
                            Icons.star,
                            color: Colors.black,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(productName, style: AppTypography.font16w400),
              Text(category, style: AppTypography.font14w400grey),
              Text('$price ₽', style: AppTypography.font16w400),
            ],
          ),
        ),
      ),
    );
  }
}
