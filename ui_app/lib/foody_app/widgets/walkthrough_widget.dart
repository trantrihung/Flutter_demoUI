import 'package:flutter/material.dart';
import 'package:ui_app/foody_app/widgets/button.dart';

class WalkThroughWidget extends StatefulWidget {
  final String img;
  final String heading;
  final String title;
  final int index;
  // final PageController pageController;
  final void Function()? onTap;
  const WalkThroughWidget({
    required this.img,
    required this.heading,
    required this.title,
    required this.index,
    // required this.pageController,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  State<WalkThroughWidget> createState() => _WalkThroughWidgetState();
}

class _WalkThroughWidgetState extends State<WalkThroughWidget> {
  @override
  Widget build(BuildContext context) {
    // print(widget.img);
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(widget.img),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Text(
                widget.heading,
                style: const TextStyle(
                  fontSize: 38,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 80),
        ButtonPrimary(
          title: "Next",
          isButtonPrimary: true,
          onTap: widget.onTap,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
