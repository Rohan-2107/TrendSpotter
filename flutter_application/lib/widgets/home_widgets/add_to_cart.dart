// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/core/store.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutations, RemoveMutations]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutations(catalog);
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyTheme.lightBluishColor),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
