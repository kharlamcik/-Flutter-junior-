
import 'package:flutter/material.dart';

import '../../date/product.dart';
import '../../product_screen/ui/product_detail_screen.dart';
import 'content_container.dart';

class ProductsList extends StatelessWidget {
  final List<Product> products;
  final ScrollController _scrollController = ScrollController();

  ProductsList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: Scrollbar(
        thickness: 8,
        controller: _scrollController, // Use ScrollController here
        child: GridView.builder(
          controller: _scrollController,
          // Attach ScrollController to ListView.builder
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
          ),
          itemBuilder: (context, index ) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 20),
              child: ContentContainer(
                productName: products[index].productName,
                category: products[index].category,
                rating: products[index].rating,
                price: products[index].price,
                imageUrl: products[index].images.first,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailScreen(product: products[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
