import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/models/menucategory_model.dart';

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
            width: 80,
            child: Column(
              children: [
                IconButton(
                  iconSize: 46,
                  onPressed: () {},
                  icon: Image.asset(
                    item.image.toString(),
                  ),
                ),
                Text(
                  item.title.toString(),
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
