import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/foody_app/widgets/product_card.dart';
import 'package:ui_app/foody_app/utils/styles.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 26),
          Icon(Icons.send_and_archive_outlined),
          SizedBox(width: 26),
        ],
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // image
          Container(
            width: double.infinity,
            height: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/foody/authen.png"),
                fit: BoxFit.cover,
              ),
              // color: Colors.black,
            ),
          ),
          Column(
            // padding: const EdgeInsets.symmetric(horizontal: 16),
            // shrinkWrap: true,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: const Text(
                  "Big Garden Salad",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
              // Review
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "4.8",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "(4.8k review)",
                      style: TextStyle(
                        fontSize: 16,
                        color: kColorGreyTitle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
              // Delivery
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: kColorPrimary,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "2.4 km",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Delivery Now | 🛵  \$2.00"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
              //Offer are available
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                      color: kColorPrimary,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Offer are available",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              // Menu
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                child: const Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ProductCard(
                length: 3,
                isCardHorizontal: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
