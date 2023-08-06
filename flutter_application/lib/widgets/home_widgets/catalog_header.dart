import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class CataLogHeader extends StatelessWidget {
  const CataLogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog".text.xl5.bold.color(context.theme.hintColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
