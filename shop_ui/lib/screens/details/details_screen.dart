import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';

import 'components/favorite_button.dart';
import 'components/title_and_price.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: product.bgColor,
        appBar: AppBar(
          backgroundColor: product.bgColor,
          actions: [
            FavoriteButton(product: product),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * .45,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Container(
                height: size.height * .43,
                padding: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBorderRadius * 3),
                  color: Colors.white,
                ),
                child: Column(children: [
                  TitleAndPrice(product: product),
                  Text(product.description),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
