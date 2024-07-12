
import 'package:flutter/material.dart';

import '../../date/product.dart';
import '../../widgets/appbar/custom_app_bar.dart';
import '../widget/image_thumbnail_list.dart';
import '../widget/price_information.dart';
import '../widget/product_description.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

final TextEditingController _controllerTitle = TextEditingController();

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late String mainImageUrl;

  @override
  void initState() {
    super.initState();
    mainImageUrl = widget.product.images.first;
  }

  void updateMainImageUrl(String newImageUrl) {
    setState(() {
      mainImageUrl = newImageUrl;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controllerTitle: _controllerTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
          child: Column(
            children: [
              PriceInformation(widget: widget),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageThumbnailList(
                    imageUrls: widget.product.images,
                    onImageSelected: updateMainImageUrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 700,
                        height: 700,
                        child: Image.network(
                          mainImageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ProductDescription(widget: widget),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
