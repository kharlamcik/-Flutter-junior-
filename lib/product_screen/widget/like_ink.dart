import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/fonts.dart';

class FavoriteButton extends StatefulWidget {
  final String text;
  final TextStyle? style;

  const FavoriteButton({
    super.key,
    required this.text,
    this.style,
  });

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final TextStyle effectiveStyle = widget.style ?? AppTypography.font16w400;

    return InkWell(
      splashColor: isFavorite? AppColors.grey : Colors.red,
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: AnimatedContainer(
        width: 200,
        height: 40,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isFavorite ? AppColors.greyContainer : Colors.transparent,
          border: Border.all(
            color: isFavorite ? Colors.red : AppColors.black,
            width: 2,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFavorite ? 'Удалить из желаемого' : widget.text,
                style: effectiveStyle.copyWith(
                  color: isFavorite ? Colors.red : null,
                ),
              ),
              if (isFavorite)
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 16,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
