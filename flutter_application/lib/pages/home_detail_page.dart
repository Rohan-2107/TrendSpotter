// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50),
          ],
        ).p32(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context).centered(),
            Expanded(
              child: VxArc(
                arcType: VxArcType.convey,
                height: 30,
                edge: VxEdge.top,
                child: SingleChildScrollView(
                  child: Container(
                    width: context.screenWidth,
                    color: context.cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        10.heightBox,
                        "Voluptua Et dolor est justo ipsum sit et vero. Et eirmod erat labore magna sed, et elitr no dolore clita labore est invidunt. Accusam ipsum diam sed sed aliquyam, at labore sed dolor sit erat, sea invidunt consetetur stet sanctus ipsum est sanctus labore dolores. Lorem at diam voluptua sanctus labore amet. No et consetetur takimata gubergren tempor, voluptua stet labore sit erat ea diam ipsum, est justo dolores sea amet gubergren labore sed sanctus, accusam vero diam est clita justo ea, stet voluptua kasd invidunt eirmod, sadipscing eos est stet dolor kasd sed sit justo magna, no clita amet magna sit sanctus. Diam sea ipsum consetetur et, at diam eirmod tempor nonumy eos sed sit sit. Dolor magna stet et sea, tempor magna consetetur rebum sadipscing et sanctus, lorem vero ipsum ipsum sanctus nonumy, dolores consetetur sadipscing ipsum sed magna et. Ipsum lorem amet sed at dolor, aliquyam est lorem erat tempor et, ea magna elitr est duo sit no sed takimata, sit aliquyam invidunt diam et labore sed justo. Dolor at tempor amet justo lorem sed magna sit. Amet clita gubergren clita est, sit kasd eos tempor et. Takimata et duo justo no sit. Sed est lorem labore et.duo ea sea aliquyam eos lorem, dolor rebum gubergren tempor et, vero est sed amet sit nonumy sit dolor, et stet dolor sadipscing no consetetur tempor invidunt, dolor et est gubergren eirmod magna clita labore voluptua ut. Justo dolores diam ipsum erat at aliquyam. Eirmod sadipscing ipsum justo vero."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
