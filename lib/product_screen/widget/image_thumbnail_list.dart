import 'package:flutter/material.dart';
import 'package:webpricol/utils/colors.dart';

class ImageThumbnailList extends StatelessWidget {
  final List<String> imageUrls;
  final ValueChanged<String> onImageSelected;

  const ImageThumbnailList({
    super.key,
    required this.imageUrls,
    required this.onImageSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(imageUrls.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Ink(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.purple),
              borderRadius: BorderRadius.circular(9),
            ),
            child: InkWell(
              splashColor: AppColors.purple,
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                onImageSelected(imageUrls[index]);
              },
              child: Image.network(
                imageUrls[index],
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }),
    );
  }
}
