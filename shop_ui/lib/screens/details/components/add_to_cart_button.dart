import 'package:flutter/material.dart';

import '../../../constants.dart';
class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size.height * .07,
        width: size.width * .7,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: const StadiumBorder()
          ),
          child: Text(
            "Add To Cart",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
