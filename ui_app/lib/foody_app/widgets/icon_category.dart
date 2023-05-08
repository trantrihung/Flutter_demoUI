import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/models/menucategory_model.dart';
import 'package:ui_app/foody_app/utils/styles.dart';

class IconCategory extends StatelessWidget {
  const IconCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 20,
        runSpacing: 20,
        children: menus.map((item) {
          return SizedBox(
            width: 60,
            child: Column(
              children: [
                IconButton(
                  iconSize: 38,
                  onPressed: () {},
                  icon: Image.asset(
                    item.image.toString(),
                  ),
                ),
                Text(
                  item.title.toString(),
                  style: heading3.copyWith(overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
