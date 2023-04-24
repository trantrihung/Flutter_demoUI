import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_app/foody_app/utils/theme.dart';
import 'package:ui_app/foody_app/widgets/specialoffices_widget.dart';

class SpecialOffices extends StatelessWidget {
  const SpecialOffices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Special Offices"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingPrimary),
        child: ListView(
          children: [
            SpecialWidget(),
            SizedBox(height: 26),
            SpecialWidget(),
            SizedBox(height: 26),
            SpecialWidget(),
            SizedBox(height: 26),
            SpecialWidget(),
            SizedBox(height: 26),
            SpecialWidget(),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
