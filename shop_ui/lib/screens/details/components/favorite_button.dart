import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.product.favorite = !widget.product.favorite;
        });
      },
      icon: Container(
        padding: const EdgeInsets.all(defaultPadding / 3),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: SvgPicture.asset(
          "assets/icons/Heart.svg",
          colorFilter: ColorFilter.mode(
            widget.product.favorite ? Colors.red : Colors.grey,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
