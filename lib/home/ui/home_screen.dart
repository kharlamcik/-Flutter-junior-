import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webpricol/utils/fonts.dart';
import 'package:webpricol/widgets/appbar/custom_app_bar.dart';
import 'package:webpricol/widgets/button/text_button.dart';
import '../../date/mock_data.dart';
import '../../date/product.dart';
import '../widget/products_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controllerTitle = TextEditingController();

  late List<Product> productList;

  @override
  void initState() {
    super.initState();
    productList = List<Product>.from(jsonDecode(mockProductData).map((x) => Product.fromJson(x)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controllerTitle: _controllerTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Хиты продаж',
                    style: AppTypography.font30w400,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomTextButton(text: 'Смотреть все', onTap: () {})
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: ProductsList(
                    products: productList,
                  )),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Лучшие новинки',
                    style: AppTypography.font30w400,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomTextButton(text: 'Смотреть все', onTap: () {})
                ],

              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: ProductsList(
                        products: productList,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
