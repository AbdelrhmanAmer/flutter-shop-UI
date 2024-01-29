import 'package:flutter/material.dart';

import '../../../models/product.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.description,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(
          fontWeight: FontWeight.bold, color: Colors.black54),
    );
  }
}
