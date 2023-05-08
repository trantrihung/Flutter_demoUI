// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/utils/styles.dart';

class LabelSection extends StatelessWidget {
  final String text;
  final TextStyle style;
  const LabelSection({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: style,
        ),
        Text(
          "See All",
          style: heading3.copyWith(color: accent),
        ),
      ],
    );
  }
}
