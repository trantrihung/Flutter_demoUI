import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 330,
      child: ListView.builder(
        clipBehavior: Clip.none,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: 190,
              margin: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Container(
                    width: 190,
                    height: 190,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/foody/bibimbap.png"),
                      ),
                      color: const Color(0xFFedeff2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // Text PROMO
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: kColorPrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "PROMO",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Mixed Salad Bond asf asd",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: kColorGreyTitle,
                              letterSpacing: 0.5,
                            ),
                            children: const <TextSpan>[
                              TextSpan(text: "1.5 km | "),
                              TextSpan(text: " ⭐ 4.8 "),
                              TextSpan(text: "1,2k"),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$6.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: kColorPrimary,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " |  🚙  \$2.00 ",
                              style: TextStyle(color: kColorGreyTitle),
                            ),
                            const Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
