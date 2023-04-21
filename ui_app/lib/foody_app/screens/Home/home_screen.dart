import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../features/ProductCard/product_card.dart';
import '../../utils/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List menu = [
    {"image": "assets/images/foody/icon_hamburger.png", "title": "hamburger"},
    {"image": "assets/images/foody/icon_drink.png", "title": "drink"},
    {"image": "assets/images/foody/icon_dessert.png", "title": "dessert"},
    {"image": "assets/images/foody/icon_meat.png", "title": "meat"},
    {"image": "assets/images/foody/icon_pizza.png", "title": "pizza"},
    {"image": "assets/images/foody/icon_ramen.png", "title": "ramen"},
    {"image": "assets/images/foody/icon_vegeta.png", "title": "vegeta"},
    {"image": "assets/images/foody/icon_more.png", "title": "more"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          clipBehavior: Clip.none,
          // shrinkWrap: true,
          children: [
            const SizedBox(height: 34),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Image.asset(
                    "assets/images/foody/avatar.png",
                    height: 48,
                    width: 48,
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Deliver to",
                      style: TextStyle(fontSize: 14, color: kColorGreyTitle),
                    ),
                    Text(
                      "Time Square",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: kColorGrey),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            splashRadius: 25,
                            icon: Icon(Icons.notifications_active_outlined)),
                      ),
                      SizedBox(width: 16),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: kColorGrey),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            splashRadius: 25,
                            icon: Icon(Icons.shopify_outlined)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 26),

            //Search form
            SizedBox(
              height: 56,
              child: TextFormField(
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 20),
                    hintText: "What are you craving?",
                    hintStyle: const TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: kBackgroundTextFormField,
                    prefixIcon: const Padding(
                      padding: EdgeInsetsDirectional.only(start: 30, end: 10),
                      child: Icon(
                        Icons.search,
                        // size: 32,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 26),

            // Special Offers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Special Offers",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: kColorPrimary,
                borderRadius: BorderRadius.circular(20),
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
                            ),
                          ),
                          TextSpan(
                            text: "valid for today!",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),

            // icon special offers
            GridView.count(
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              crossAxisCount: 4,
              children: menu.map((item) {
                return Column(
                  children: [
                    IconButton(
                      iconSize: 46,
                      onPressed: () {},
                      icon: Image.asset(
                        item["image"].toString(),
                      ),
                    ),
                    Text(
                      item["title"].toString(),
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis),
                    )
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 26),

            // Text Discount Guaranteed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Discount Guaranteed! 👌",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 26),
            // Card
            const ProductCard(),

            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Discount Guaranteed! 👌",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
