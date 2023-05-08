import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/models/menucategory_model.dart';
import 'package:ui_app/foody_app/widgets/button.dart';
import 'package:ui_app/foody_app/widgets/icon_category.dart';
import 'package:ui_app/foody_app/widgets/specialoffices_widget.dart';

import '../../widgets/heading.dart';
import '../../widgets/label_section.dart';
import '../../widgets/product_card.dart';
import '../../utils/styles.dart';
import '../../widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: menus.length, vsync: this);
    return Scaffold(
      backgroundColor: background,
      body: Container(
        // margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          clipBehavior: Clip.none,
          // shrinkWrap: true,
          children: [
            SizedBox(height: medium),
            const HeadingSection(),
            SizedBox(height: medium),
            //Search form
            const SearchSection(),
            SizedBox(height: medium),

            // Special Offers
            LabelSection(
              text: "Special Offers",
              style: heading1,
            ),
            SizedBox(height: medium),
            const SpecialWidget(),

            // icon special offers
            SizedBox(height: medium),
            const IconCategory(),

            // Text Discount Guaranteed
            SizedBox(height: medium),
            LabelSection(text: "Discount Guaranteed! 👌", style: heading1),

            // Card
            SizedBox(height: medium),
            const ProductCard(
              length: 3,
            ),

            SizedBox(height: medium),
            LabelSection(text: "Recommended For You 😍", style: heading1),

            SizedBox(height: medium),
            TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(30),
              ),
              labelColor: white,
              unselectedLabelColor: accent,
              isScrollable: true,
              splashBorderRadius: BorderRadius.circular(30),
              tabs: menus
                  .map(
                    (item) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 1,
                          color: accent,
                        ),
                      ),
                      child: Tab(
                        child: Row(
                          children: [
                            Image.asset(item.image, width: 20, height: 20),
                            const SizedBox(width: 8),
                            Text(item.title),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),

            SizedBox(height: medium),
            AutoScaleTabBarView(
              controller: _tabController,
              children: const [
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
                ProductCard(isCardHorizontal: true, length: 2),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          backgroundColor: white,
          selectedItemColor: accent,
          unselectedItemColor: icon,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: heading4,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.trip_origin), label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), label: "Order"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Order"),
          ],
        ),
      ),
    );
  }
}
