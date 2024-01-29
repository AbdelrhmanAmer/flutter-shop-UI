import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import 'color_dot.dart';

class ColorsOptions extends StatefulWidget {
  const ColorsOptions({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  State<ColorsOptions> createState() => _ColorsOptionsState();
}

class _ColorsOptionsState extends State<ColorsOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Colors", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: defaultPadding / 2),
        Row(
          children: List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
              press: () {setState(() {
                widget.product.selectedColorIndex = index;
              });},
              currentIndex: index,
              selectedIndex: widget.product.selectedColorIndex,
            ),
          ),
        )
      ],
    );
  }
}
