import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/utils/theme.dart';
import 'package:ui_app/foody_app/widgets/icon_category.dart';

import '../../models/menucategory_model.dart';

class MoreCategory extends StatelessWidget {
  const MoreCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kPaddingPrimary),
            width: double.infinity,
            child: const IconCategory(),
          ),
        ],
      ),
    );
  }
}
