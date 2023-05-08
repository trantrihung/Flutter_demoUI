import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/foody_app/widgets/product_card.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Cart"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          ProductCard(
            isCardHorizontal: true,
            length: 3,
          ),
        ],
      ),
    );
  }
}
