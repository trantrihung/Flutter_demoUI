import 'package:flutter/material.dart';

import '../utils/theme.dart';

class SpecialWidget extends StatelessWidget {
  const SpecialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: kColorPrimary,
        borderRadius: BorderRadius.circular(30),
        image: const DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage("assets/images/foody/burger.png"),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: MediaQuery.of(context).size.width / 3,
            child: RichText(
              softWrap: true,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "30% ",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "Discount only ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "valid for today!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
