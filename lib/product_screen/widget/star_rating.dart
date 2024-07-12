
import 'package:flutter/material.dart';
import 'package:webpricol/utils/colors.dart';
import 'package:webpricol/utils/fonts.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;

  const StarRating({
    super.key,
    required this.rating,
    this.size = 24.0,
    this.color = AppColors.purple,
  });

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    bool hasHalfStar = (rating - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    return Row(
      children: [
        Text(rating.toString(),style: AppTypography.font20w400,),
        ...List.generate(fullStars, (index) => Icon(Icons.star, size: size, color: color)),
        if (hasHalfStar)
          Icon(Icons.star_half, size: size, color: color),
        ...List.generate(emptyStars, (index) => Icon(Icons.star_border, size: size, color: color)),

      ],
    );
  }
}