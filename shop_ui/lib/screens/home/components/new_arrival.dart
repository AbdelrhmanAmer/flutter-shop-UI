import 'package:flutter/material.dart';
import 'package:shop_ui/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "New Arrival", press: () {}),
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
                      MaterialPageRoute(builder: (ctx){
                        return DetailsScreen(product: products[index],);
                      })
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
