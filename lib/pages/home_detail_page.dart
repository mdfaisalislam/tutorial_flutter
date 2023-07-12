import 'package:flutter/material.dart';
import 'package:tutorial_flutter/models/catalog.dart';
import 'package:tutorial_flutter/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add to cart".text.xl.bold.make(),
            ).wh(150, 50)
          ],
        ).p24(),
      ),
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h40(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name.text.xl3.bold
                            .color(MyTheme.darkBluishColor)
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .lg
                            .make(),
                        "Gubergren labore sit dolores accusam dolor eos.Est magna sed sanctus magna diam ipsum et accusam eos, lorem rebum accusam dolore lorem sea ea diam. Dolores labore dolores labore duo diam et sanctus tempor amet."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
                      ],
                    ).py64(),
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
