import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../details/details_screen.dart';
import 'product_card.dart';
import 'section_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular", press: () {}),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              products.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding / 2),
                child: ProductCard(
                  product: products[index],
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) {
                        return DetailsScreen(
                          product: products[index],
                        );
                      }),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
