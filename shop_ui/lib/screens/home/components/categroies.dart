import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Category.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding ),
            child: CategoryCard(
              icon: categories[index].icon,
              title: categories[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}
